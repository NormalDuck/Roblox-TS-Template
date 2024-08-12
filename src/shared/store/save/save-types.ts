import { Flamework } from "@flamework/core";

export interface PlayerSave {
    eee: number
    aaa: string
}

export const DefaultPlayerSave: PlayerSave = {
    eee: 123,
    aaa: "Hello, World!"
};

export const PlayerSaveGuard = Flamework.createGuard<PlayerSave>();
