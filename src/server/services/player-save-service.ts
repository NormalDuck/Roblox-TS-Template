import { OnInit, Service } from "@flamework/core";
import { createCollection, setConfig } from "@rbxts/lapis";
import DataStoreServiceMock from "@rbxts/lapis-mockdatastore";
import { RunService } from "@rbxts/services";
import { OnPlayerJoin } from "server/hooks";
import { store } from "server/store";
import { PlayerSerDes } from "shared/SerDes";
import { selectPlayerSave } from "shared/store/save/save-selectors";
import { DefaultPlayerSave, PlayerSave } from "shared/store/save/save-types";

@Service()
export class PlayerSaveService implements OnInit, OnPlayerJoin {
	onInit(): void {
		if (RunService.IsStudio()) setConfig({ dataStoreService: new DataStoreServiceMock() });
	}
	async onPlayerJoin(player: Player) {
		const PLAYER_SAVE_COLLECTION = createCollection("PlayerSave", {
			defaultData: PlayerSerDes.serialize(DefaultPlayerSave),
		});
		const document = await PLAYER_SAVE_COLLECTION.load("PlayerSave", [player.UserId]);
		store.setPlayerSave(player, PlayerSerDes.deserialize(document.read().buffer, document.read().blobs));
		store.patchPlayerSave(player, { eee: 1111 });
		print(store.getState(selectPlayerSave));
		document.beforeSave(() =>
			document.write(PlayerSerDes.serialize(store.getState(selectPlayerSave).get(player) as PlayerSave)),
		);
	}
}
