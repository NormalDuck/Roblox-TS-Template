import { Service } from "@flamework/core";
import { Collection, createCollection, setConfig } from "@rbxts/lapis";
import DataStoreServiceMock from "@rbxts/lapis-mockdatastore";
import { RunService } from "@rbxts/services";
import { OnPlayerJoin } from "server/hooks";
import { store } from "server/store";
import { PlayerSerDes } from "shared/SerDes";
import { selectPlayerSave } from "shared/store/save/save-selectors";
import { DefaultPlayerSave, PlayerSave } from "shared/store/save/save-types";

@Service()
export class PlayerSaveService implements OnPlayerJoin {
	private PlayerSaveCollection: Collection<ReturnType<typeof PlayerSerDes.serialize>>;
	constructor() {
		if (RunService.IsStudio()) setConfig({ dataStoreService: new DataStoreServiceMock() });
		this.PlayerSaveCollection = createCollection("PlayerSave", {
			defaultData: PlayerSerDes.serialize(DefaultPlayerSave),
		});
	}
	async onPlayerJoin(player: Player) {
		const document = await this.PlayerSaveCollection.load("PlayerSave", [player.UserId]);
		store.setPlayerSave(player, PlayerSerDes.deserialize(document.read().buffer, document.read().blobs));
		document.beforeSave(() =>
			document.write(PlayerSerDes.serialize(store.getState(selectPlayerSave).get(player) as PlayerSave)),
		);
		document.beforeClose(() => store.deletePlayerSave(player));
	}
}
