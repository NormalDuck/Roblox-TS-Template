import { createBroadcaster } from "@rbxts/reflex";
import { Events } from "server/network";
import { HydrateSerDes } from "shared/SerDes";
import { SharedState, slices } from "shared/store";

createBroadcaster({
	producers: slices,
	dispatch: (player, actions) => {
		Events.store.dispatch.fire(player, actions);
	},
	hydrate: (player, state) => {
		Events.store.hydrate.fire(player, HydrateSerDes.serialize(state as unknown as SharedState));
	},
	hydrateRate: 60,
});
