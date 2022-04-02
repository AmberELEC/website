# Nintendo Super NES / Super Famicom

## Paths
- Super Nintendo: `/roms/snes`
- Super Famicom: `/roms/sfc`
- [MSU-1](#msu-1): `/roms/snesmsu1`
- Hacks: `/roms/snesh`
- [Sufami Turbo](#sufami-turbo): `/roms/sufami`
- [Satellaview](#satellaview-bs-x): `/roms/satellaview`

The only difference between snes, sfc, snesmsu1, and snesh is how they are displayed in EmulationStation (e.g. for theming purposes). They support the same extensions, can use the same cores, and are scraped the same way.

## Supported Extensions
.smc, .sfc, .swc, .fig, .gd3, .gd7, .dx2 (Super Nintendo), .bs, .bsx (Satellaview), .st (Sufami Turbo), .zip, .7z

## BIOSes needed
Ordinary SNES games do not use a BIOS.

For Sufami Turbo games to work, the file `STBIOS.bin` needs to be placed in the `bios` folder on the games partition. The MD5 checksum of this file is `d3a44ba7d42a74d3ac58cb9c14c6a5ca`.

For Satellaview/BS-X games, the file `BS-X.bin` needs to be placed in the `bios` folder on the games partition. The MD5 checksum of this file is `fed4d8242cfbed61343d53d48432aced`, patched versions also work (e.g. the English translation).

## Cores
Snes9x is the default core, these cores are also available:
- Snes9x 2002
- Snes9x 2005 Plus
- Snes9x 2010
- Beetle Supafaust

The older versions of SNES are there to try if a game does not perform well (see below), however as they are oudated, they may have graphical glitches or other inaccuracies. They may not support all expansion chips, and do not work with MSU-1.

## Specific game info

If you are unsure about whether or not a game uses a specific expansion chip, you can view the list on [Wikipedia](https://en.wikipedia.org/wiki/List_of_Super_NES_enhancement_chips#List_of_Super_NES_games_that_use_enhancement_chips), or search [superfamicom.org](https://superfamicom.org/).

### MSU-1

MSU-1 is a virtual SNES chip designed by Near, the creator of the bsnes and higan emulators. The chip allows the SNES to play CD quality audio and address up to 4GB of memory locations. It's primarily used for patches that replace the music with orchestral or remixed music. The most comprehensive collection of MSU-1 patches can be found on the [Zeldix forum](https://www.zeldix.net/f71-msu-1-hacks-database).

To play MSU-1 games, you'll need to patch your rom, and you'll need to have a set of pcm files. You'll also need the corresponding msu file. In general, you'll want all the files to use the same naming convention. If you have the patched rom `eb_msu1.sfc`, you should have the `eb_msu1.msu` file, as well as numbered `eb_msu1-#.pcm` files.

Beetle Supafaust only supports the extension `.sfc`. If your rom file uses `.smc`, please rename it to `.sfc`.

### SA-1 (Kirby Super Star, Kirby's Dream Land 3, Super Mario RPG, etc); SuperFX (Star Fox, Stunt Race FX, etc); SuperFX 2 (Doom, Super Mario World 2: Yoshi's Island, etc)

The emulation of the additional chips present in these games can be quite demanding compared to other SNES games, and may not run at full speed with the default SNES core. Beetle Supafaust or an older Snes9x core may yield better performance.

### DSP-3 (SD Gundam GX), DSP-4 (Top Gear 3000), OBC-1 (Metal Combat: Falcon's Revenge), S-RTC (Daikaijuu Monogatari II), SPC7110 (Tengai Makyou Zero), ST010 (F1 ROC II: Race of Champions)

These games are not supported by the Beetle Supafaust core.

### Hayazashi Nidan Morita Shougi, Hayazashi Nidan Morita Shougi 2
These games are not supported by any core available in AmberELEC, and are not playable.

## Sufami Turbo

### Overview

- Cores:
	- Snes9x (default)
    - Snes9x 2002
	- Snes9x 2005 Plus
	- Snes9x 2010
- Path: `/roms/sufami`
- Extensions: `.st .zip .7z`


Sufami Turbo games are not supported by the Beetle Supafaust core, and will require Snes9x. Additionally, zip or 7z compression will prevent Cartridge Linking from being used.

### BIOS

For Sufami Turbo games to work, the file `STBIOS.bin` needs to be placed in the `bios` folder on the games partition. The MD5 checksum of this file is `d3a44ba7d42a74d3ac58cb9c14c6a5ca`.

### Cartridge Linking

The Sufami Turbo had two cartridge slots. The game in the first cartridge slot was the one that would be played, but using certain cartridges in the second cartridge slot could unlock extra characters or allow sharing save data for multiplayer.

If you are linking cartridges, your roms must be unzipped. Zipped roms will just load as single roms instead of booting up as a multi-cart.

To link cartridges, boot the game that you want to play. Open the RetroArch Quick Menu and then press B to back out to the full RetroArch menu. Scroll down and select `Subsystem`. You should get the option `Load Multi-Cart Link [Current Content: Cart A]`. Select that and then choose the game that you're playing (again). You'll now get the option `Load Multi-Cart Link [Current Content: Cart B]`. Select that and choose the game you want to link. Finally, you'll have the option `Start Multi-Cart Link`. Select that, and your game will start with the link to the second game active.

Games that support Cartridge Linking:

- Any SD Gundam Generation game with any other SD Gundam Generation game to unlock unique fighters from the second game
- Either SD Ultra Battle game with itself or the other SD Ultra Battle game for second player character choice and save data
- Poi Poi Ninja with itself for two player save games

## Satellaview (BS-X)

### Overview

- Cores:
	- Snes9x (default)
    - Snes9x 2002
	- Snes9x 2005 Plus
	- Snes9x 2010
- Path: `/roms/satellaview`
- Extensions: `.bs .bsx .smc .sfc .swc .fig .zip .7z`

Satellaview games are not supported by the Beetle Supafaust core, and will require Snes9x.

Some Satellaview games require [SatData](#satdata) with the Time Channels to play correctly.

### BIOS

The Satellaview uses the BS-X rom as a bios. Any version of the BS-X rom can be used, though ideally you'll want one that's had the DRM patch applied. There's also an English language patch that can be applied. The rom should be renamed to `BS-X.bin` and placed in the `/roms/bios` folder.

| BIOS version    | md5sum                           |
|-----------------|----------------------------------|
| English No DRM  | 96cf17bf589fcbfa6f8de2dc84f19fa2 |
| Japanese No DRM | d5af0ab2545c053b90ffa0866074ecf1 |
| English         | 9c72de0cf4c9c88003292a79ddd0144d |
| Japanese        | fed4d8242cfbed61343d53d48432aced |

### Playing Games

If you aren't interested in the BS-X RPG, just choose your ROM, go through the welcome screen, setting up your name and avatar if you haven't already for this rom. Once you have control of your avatar, go up and press A to go inside the closest building. The first option in the menu is "Load Stored Data". Press A to select it, the press A on the first (and only) entry in the list, and your game will launch.

If a game fails to launch, it may require [SatData](#satdata) with the Time Channels.

### BS-X

Satellaview games are launched through a hub-world RPG called BS-X: The Story of the Town Whose Name Was Stolen.

The first time you launch each Satellaview game, you'll be prompted to enter your name and select a playable avatar (these choices are used in some games such as BS Zelda no Densetsu). This information will be saved on a per-game basis, rather than having a single profile for the entire BS-X bios. After that, you'll get a welcome message and be sent to the overworld.

Overworld Controls

| Button | Action                                 |
| A      | Interact (Enter buildings, talk, etc)  |
| B      | Sprint Shoes* (run, if you have them)  |
| Y      | Inventory Menu                         |

\* The sprint shoes can only be bought if there is active [SatData](#satdata)

The building directly above you is your home. From there you can launch games that have been downloaded into the Satellaview Memory Pack. In normal circumstances, that will only be the rom that you opened. To play it, just go into your house and choose the first menu option a couple times.

By default there's not a lot to do around town. Everything will be closed, and there won't be any other characters in town. You can wander around and take in the sights, but that's about all. If you want to get more out of BS-X, you'll need SatData.

### SatData

When the Satellaview was active, it would connect to a server via satellite. That server would send down a packet of data that would tell the system what NPCs, items, shops, events, and world objects were available. Unfortunately, that server is long gone, and there's currently no way to connect the BS-X system to a server.

Snes9x does support loading those data-packets though. If you put them into the folder with your roms, Snes9x will find them and start the town up based on those files. Those files are called the SatData. The SatData comes as a set of `.bin` files.

You may be able to find SatData that various people have created in various places online, but the easiest way to get a SatData setup that you like is to create your own. There's a tool called [SatellaWave](https://github.com/LuigiBlood/sat_wave/releases) (Windows only, but can probably be run using Wine) that you can use to generate your own SatData.

A YouTuber named Cabbusses has created a four part tutorial series on using SatellaWave. There are three videos that are really helpful for learning how to use it. One covers the [basic how-to, NPCs, joke items, and time channels](https://www.youtube.com/watch?v=fIrTMKovOvo), one covers [in-game shops and game downloads](https://www.youtube.com/watch?v=fIrTMKovOvo), and the last one covers [event plazas](https://www.youtube.com/watch?v=86FVdy-NPj8).

Once you run an export, simply place the `.bin` files that are generated in the `/bin/satellaview` folder alongside your roms, and you should be good to go.
