# ZE Grau Extra RTV Stages

This repository contains assets, strippers and vscripts to add extra RTV stages for ZE Grau. `RTV-FyS`, `RTV-Z`, `RTV-RNG`, and `RTV-A` are currently supported in CS:GO, while only `RTV-FyS` is supported in CS2.

> [!NOTE]
> Feel free to use these assets and scripts on your server, whether for training servers or not.

## Installation

### CS2

1. Install [Metamod:Source](https://www.metamodsource.net/downloads.php?branch=dev) and [CS2Fixes](https://github.com/Source2ZE/CS2Fixes/releases).
2. Download [StripperCS2](https://github.com/Source2ZE/StripperCS2/releases) and place it in the `game/csgo` folder.
3. Install [MultiAddonManager](https://github.com/Source2ZE/MultiAddonManager/releases), then open its configuration file and add `3379040522` to the `mm_extra_addons` keyvalue.
4. Install [CounterStrikeSharp](https://github.com/roflmuffin/CounterStrikeSharp/releases).
5. Download this repository and: 
   - Place the `cs2/stripper/ze_grau_p` folder in `StripperCS2/maps`.
   - Place the `counterstrikesharp` folder in `game/csgo/addons`.

> [!WARNING]
> The latest version of CounterStrikeSharp has a known fatal issue that may crash your server. I strongly recommend downloading [v287](https://github.com/roflmuffin/CounterStrikeSharp/releases/tag/v287) instead of the latest version. The DLL file in this repository was compiled using **v287** for stability.

> [!NOTE]
> You can merge all `.*_c` assets in the `cs2/assets` folder into your own workshop collection directly. You don't need to add my public addons to your server, but you will need to update them manually.

### CS:GO

1. Install [Metamod:Source](https://www.metamodsource.net/downloads.php/?branch=1.12-dev) and [SourceMod](https://www.sourcemod.net/downloads.php?branch=dev).
2. Download [Stripper:Source](https://forums.alliedmods.net/showthread.php?t=39439) or compile [Stripper SP Edition](https://github.com/tilgep/stripper) with SourcePawn
3. Download this repository and:
   - Place the `ze_grau_a03_4ff.cfg` file in either `csgo/addons/stripper/maps` or `csgo/addons/sourcemod/configs/stripper/maps`.
   - Copy the `csgo/assets/materials` and `shared` folders to the `csgo/sound` directory (and also to your local CS:GO directory in Steam).
   - Copy the `csgo/scripts` folder to `csgo/scripts`.

> [!WARNING]
> To allow players to join your server, you need to install [NoLobbyReservation](https://github.com/gflze/NoLobbyReservation) SourceMod plugin, as required by the final updates to CS:GO.

> [!NOTE]
> It is recommended to install [ParticleFix](https://github.com/komashchenko/ParticleFix) for maps that use particles. While Grau doesn't require it, it may be useful for other maps.

## FAQ

### Why is there no RTV-Ex?

A. I'm currently reworking it.

### Are you planning to add more RTV stages?

A. Yes. I'm considering porting the stage called `RTV-Plus` and creating two other RTV stages at the moment.

### Can you port this to CS2?

A. Yes, but it will take some time. I'm not familiar with CS2 mapping and stripper, so I need to learn how they work in the game from scratch. I am also planning to port these scripts to CS:S. I already know that koen has ported all RTV stages to CS:S (and Garry's Mod), but I plan to work on it personally.