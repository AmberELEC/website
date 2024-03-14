# Doom

## Overview

- Emulators: 
  - `gzdoom` (Standalone) (default)
  - `lzdoom` (Standalone)
  - `prboom`
- Path(s): 
  - doom
- Supported Extensions: `.doom`

## Setup

### Introduction
AmberELEC supports the Doom engine trough lzdoom (standalone).
It's possible to load mods and keep them in your gamelist beside your main Doom, Doom 2, SIGIL, Heretic and Hexen wads.
The system recognizes all the `.doom` files that can be placed in `/roms/doom` but it needs the original (not shareware) versions of the main games placed in `/roms/doom/*.wad`, the mods instead must be put into `/roms/doom/mods/*.wad, *.ipk3`.
However this is a standard that we are using, no one is forcing you to use this method unless you're sharing the .doom and the shareable mod files with the community (see each mod's licence about sharing).

Savefiles will be put into `/roms/gamedata/lzdoom/*.zds`

So a sample directory tree is like:

/roms/doom/<br>
./iwads    DIR<br>
./mods    DIR<br>
Castlevania.doom<br>
Doom.doom<br>
Doom_2.doom<br>
Heretic.doom<br>
Hexen.doom<br>
SIGIL.doom<br>
Simpsons_Doom.doom<br>
TNT.doom<br>

/roms/doom/iwads<br>
doom.wad<br>
doom2.wad<br>
heretic.wad<br>
hexen.wad<br>
plutonia.wad<br>
tnt.doom<br>
SIGIL_v1_21.wad<br>

/roms/doom/mods<br>
Castlevania.ipk3<br>
ulsimpdm.wad<br>

### How to create a .doom file
The file is simple and self explaining:

```
IWAD=iwads/doom.wad
MOD=mods/batman/batman.wad
MOD=mods/batman/batman.pk3
DEH=mods/batman/batman.deh
DEH=mods/batman/weapons.deh
CONF=mods/batman/batman.ini
SAVE=mods/batman
-- end --
```

- `IWAD` is the main base game file, in this case is `doom.wad`.
- `MOD` (optional) one or more .wad or .pk3 files for the mod.
- `DEH` (optional) one or more .deh files for the mod.
- `CONF` (optional) an .ini file if the mod needs an alternate configuration
- `SAVE` (optional) a folder where the saves will be stored for this mod

Please note that the names are case sensitive. Pathes can be absolute or relative to the roms folder ```/storage/roms/doom/```.

### Limitations
- Some mods can run very slow, sorry for Castlevania fans.
- Tough the shareware version of doom can be played with lzdoom it doesn't allow to load the mods, so you need a retail verson.
- PRBoom currently only runs IWADS and not mods. If you want to run mods, please try gzdoom or lzdoom.
