# Sony PlayStation

- [Overview](#overview)
- [Extensions](#extensions)
- [Cores](#cores)
- [Issues](#issues)

## Overview

- Cores:
  - `pcsx_rearmed` (default)
  - `duckstation`
  - `swanstation`
- Paths:
  - `/roms/psx`
- Supported Extensions: `.chd .m3u .cue+.bin .cue+.img .cue+.iso .pbp .mdf .toc .cbn .ccd`

## Extensions

There are a lot of extensions that are supported, and often multiple types are required together in order for emulation to work. Our recommended format for PlayStation roms is `.chd`, CHD files are compressed, so they take up less space, but unlike other compressed formats (such as `.pbp`), they still work with achievements.

## Cores

There are two cores provided by AmberELEC for PlayStation emulation: 

* PCSX ReARMed
* DuckStation(/SwanStation)

PCSX ReARMed is our default core for performance reasons.  DuckStation(/SwanStation) should only be needed for supporting some games that do not run correctly with PCSX ReARMed; it may be more accurate, but the performance on this hardware will often be worse.

## Issues
### Controls and Rumble Not Working in Games

Early PlayStation games do not recognize the DualShock controller and will not accept input, so in recent builds we have configured the Standard controller as the default.  This allows most games to work without having to change the configuration, but means analog sticks and rumble will be disabled.  Users who have upgraded from earlier builds of AmberELEC may have non-functioning controls when trying to start some games.

To change the attached virtual controller:

RetroArch Quick Menu (SELECT+X) > Controls > Port 1 Controls > Change 'Device Type' to `standard` or `dualshock` as desired.  You may also need to set 'Digital to Analog' to `None`, depending on the game's behavior.

### Poor Performance

RK3326 CPU is not powerful enough to run all PlayStation games at full speed all the time.  You will see some stuttering and skipping in demanding games like Gran Turismo, Ape Escape and others.  Other games will appear to run flawlessly.  This will continue to be the case unless there is some significant optimization in the emulators themselves; AmberELEC team has no control over this.
