---
title: Super Nintendo
category: Supported Systems
---

# Super Nintendo Entertainment System

## Paths
- Super Nintendo: `/roms/snes`
- Super Famicom: `/roms/sfc`
- Satellaview: `/roms/satellaview`
- MSU-1: `/roms/snesmsu1`
- Hacks: `/roms/snesh`

The only difference between snes, sfc, snesmsu1, and snesh is how they are displayed in EmulationStation (e.g. for theming purposes). They support the same extensions, can use the same cores, and are scraped the same way.

## Supported Extensions
.smc, .sfc, .swc, .fig, .gd3, .gd7, .dx2 (Super Nintendo), .bs, .bsx (Satellaview), .st (Sufami Turbo), .zip, .7z

## BIOSes needed
Ordinary SNES games do not use a BIOS. 

For Satellaview/BS-X games, the file `BS-X.bin` needs to be placed in the `bios` folder on the games partition. The MD5 checksum of this file is `fed4d8242cfbed61343d53d48432aced`, patched versions may work (e.g. the English translation).

For Sufami Turbo games to work, the file `STBIOS.bin` needs to be placed in the `bios` folder on the games partition. The MD5 checksum of this file is `d3a44ba7d42a74d3ac58cb9c14c6a5ca`.

## Cores
Snes9x is the default core, these cores are also available:
- Snes9x 2002
- Snes9x 2005 Plus
- Snes9x 2010
- Beetle Supafaust

The older versions of SNES are there to try if a game does not perform well (see below), however as they are oudated, they may have graphical glitches or other inaccuracies. They may not support all expansion chips, and do not work with MSU-1.

## Specific game info

If you are unsure about whether or not a game uses a specific expansion chip, you can view the list on [Wikipedia](https://en.wikipedia.org/wiki/List_of_Super_NES_enhancement_chips#List_of_Super_NES_games_that_use_enhancement_chips), or search [superfamicom.org](https://superfamicom.org/).

### SA-1 (Kirby Super Star, Kirby's Dream Land 3, Super Mario RPG, etc); SuperFX (Star Fox, Stunt Race FX, etc); SuperFX 2 (Doom, Super Mario World 2: Yoshi's Island, etc)
The emulation of the additional chips present in these games can be quite demanding compared to other SNES games, and may not run at full speed with the default SNES core. Beetle Supafaust or an older Snes9x core may yield better performance.

### Satellaview (BS-X)
The first time you launch a Satellaview game, you will need to enter your name, and select a playable avatar (these choices are used in some games such as BS Zelda no Densetsu). The next time you launch it (these are saved per-game, not for the whole Satellaview BIOS), you will need to go through some message boxes (they are telling you there's no signal detected) before the town overworld appears.

Afterwards, you will be outside an apartment building - press up to go inside. The first option in the menu is "Load Stored Data", press A to select it and A to select the only entry in the list and now your game will launch.

Satellaview games are not supported by the Beetle Supafaust core, and will require Snes9x.

### Sufami Turbo
Sufami Turbo games are not supported by the Beetle Supafaust core, and will require Snes9x. Additionally, zip or 7z compression will prevent these from being loaded.

### DSP-3 (SD Gundam GX), DSP-4 (Top Gear 3000), OBC-1 (Metal Combat: Falcon's Revenge), S-RTC (Daikaijuu Monogatari II), SPC7110 (Tengai Makyou Zero), ST010 (F1 ROC II: Race of Champions)
These games are not supported by the Beetle Supafaust core.

### Hayazashi Nidan Morita Shougi, Hayazashi Nidan Morita Shougi 2
These games are not supported by any core available in 351ELEC, and are not playable.
