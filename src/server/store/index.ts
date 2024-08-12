import { combineProducers, loggerMiddleware, type InferState } from "@rbxts/reflex";

import { slices } from "shared/store";

export type RootStore = typeof slices;
export type RootState = InferState<RootStore>;

export function createStore() {
    const store = combineProducers({ ...slices });
    // store.applyMiddleware(loggerMiddleware)
    return store
}

export const store = createStore();
