# Sony PlayStation

- [Overview](#overview)
- [BIOS](#bios)
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
- Supported Extensions: `.chd .m3u .cue+.bin .ccd+.img .iso .pbp .mds+.mdf .toc+.bin`
- Bios: [Required](#bios)

## BIOS

PCSX-ReARMed requires one of the following BIOSes:

| BIOS             | md5                              |
| PSXONPSP660.bin  | c53ca5908936d412331790f4426c6c33 |
| scph101.bin      | 6E3735FF4C7DC899EE98981385F6F3D0 |
| scph7001.bin     | 1e68c231d0896b7eadcad1d7d8e76129 |
| scph5501.bin     | 490f666e1afb15b7362b406ed1cea246 |
| scph1001.bin     | 924e392ed05558ffdb115408c263dccf |

The following bioses are required for other emulators:

| BIOS             | md5                              |
| scph5500.bin     | 8dd7d5296a650fac7319bce665a6a53c |
| scph5501.bin     | 490f666e1afb15b7362b406ed1cea246 |
| scph5502.bin     | 32736f17079d0b2b7024407c39bd3050 |

**Warning:** There is currently a bug in PCSX-ReARMed that will make it crash if the BIOS file `ps1_rom.bin` is present. Please see the  [PCSX-ReARMed crash FAQ](/faq#pcsx-rearmed-crash) for more information.

## Extensions

### Base rom file

There are a lot of extensions that are supported, and often multiple types are required together in order for emulation to work. Our recommended format for PlayStation roms is `.chd`. CHD files are compressed, so they take up less space, but unlike other compressed formats (such as `.pbp`), they still work with achievements. Instructions for converting to `.chd` format can be found on the [CD and DVD ROMs](/guides/disk-roms#converting-to-chd) page.

The most common format for PlayStation roms is `.cue+.bin`. These [can be converted to](/guides/disk-roms#converting-to-chd) `.chd` if desired, but will work just fine with AmberELEC. Please note that the `.cue` file is required, and the rom is incomplete without it. `.cue+.bin` games should always be launched by their `.cue` file, otherwise the game may be missing some audio. If you have a `.bin` file without a `.cue` file, it's recommended that you delete it and source a complete rom (since the rom may be broken in other ways), but you can also use the [DuckStation Cue Maker](https://www.duckstation.org/cue-maker/) to make a `.cue` file that matches your `.bin`.

### Playlists for multidisk games (m3u)

PlayStation has support for `.m3u` files, which are playlists that can contain multiple disks. Using `.m3u` files, you can make it so that multidisk games only have one entry in your game list. For full information about m3u files, please see [CD and DVD ROMs: Multidisk Playlists](/guides/disk-roms.md#multidisk-playlists-m3u-files).

AmberELEC can generate m3u files for all your PlayStation games automaticcally. To do this, go to the Tools section, and launch `PSX - Create m3u files`. If your games are named in an unusual fashion, the m3u files may need to be adjusted afterwards.

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
