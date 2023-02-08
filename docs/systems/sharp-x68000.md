# Sharp X68000

## Overview

- Core: `px68k` (default)
- Path: `x68000`
- Supported Extensions: `.hdm .xdf .m3u .hdf .dim .img .d88 .88d .dup .2hd .cmd .zip .7z	`
- Bios: [Required + Optional](#bios)
- Documentation: [PX68k](https://docs.libretro.com/library/px68k/)

## ROMs

Because of some strangeness in how PX68K handles game loading, we recommend that you use FD (Floppy Disk) images for your X68000 games. There is no single standard for FD games, but two you're likely to run into are `.hdm` and `.xdf`. There's no real difference in how different FD ROMs are treated, so you should be fine whichever format you end up using.

It's recommended that you create an m3u file (see [Multidisk Playlists](https://amberelec.org/guides/disk-roms#multidisk-playlists-m3u-files)) for your floppy disk games, especially for games that require more than one disk. Some games require multiple disks to be inserted at once, and an m3u file will always load the first two disks listed, so disk management will be much easier.

## Changing Disks

There are two methods for changing disks in the Sharp X68000, the in emulator disk loader and the RetroArch Disk Control.

RetroArch Disk Control works best with m3u files. When you need to swap disks, you can simply open the RetroArch menu, choose Disk Control, and then Eject Disk. You can then use Current Disk Index and Insert Disk to swap in a different disk.

The emulator also features a disk management menu. You can press L2 at any time to access it. From here, you can restart the system and select or eject FD 1 & 2 and HD 1 & 2. To eject a disk, select that disk with the B button, press down to select "EJECT", and then press B again.

## Clearing Unused Disks

For some reason, PX68K maintains its disk list between launches. If you're using FD ROMs with m3u files, this shouldn't cause any issues, as the necessary disks will be loaded into the correct slots. If you're using a mix of HD and FD games, you may run into a situation where the wrong game is loading. This is because floppy disks take precedence over the hard drive, so a floppy disk that was previously inserted may launch instead of the HD game. If this happens, you need to use the emulator's disk management to clear out the floppy disks.

To do this, press L2. For each FD that has a disk inserted, highlight it, press B to select it, press down to show the "EJECT" option, and press B to eject the disk. Once both FDs have been ejected, scroll up to RESET and press B twice. This should restart the system and boot the game from the HD.

## BIOS

The following BIOS files are required for PX68k.

| BIOS              | md5                              |
| keropi/iplrom.dat | 7fd4caabac1d9169e289f0f7bbf71d8e |
| keropi/cgrom.dat  | cb0a5cfcf7247a7eab74bb2716260269 |

The following BIOS files are optional for PX68k.

| BIOS                | md5                              |
| keropi/iplrom30.dat |	f373003710ab4322642f527f567e020a |
| keropi/iplromco.dat |	cc78d4f4900f622bd6de1aed7f52592f |
| keropi/iplromxv.dat |	0617321daa182c3f3d6f41fd02fb3275 |
