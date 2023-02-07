# Sharp X68000

## Overview

- Core: `px68k` (default)
- Path: `x68000`
- Supported Extensions: `.hdf .hdm .m3u .dim .img .d88 .88d .dup .2hd .xdf .cmd .zip .7z	`
- Bios: [Required + Optional](#bios)
- Documentation: [PX68k](https://docs.libretro.com/library/px68k/)

## ROMs

The recommended extension for playing Sharp X68000 is `.hdf`. This is the harddisk image for the game, and is usually labeled as "HD". Using an HD image means that you don't have to worry about swapping between disks, and the loading time is also reduced.

If you're using an FD (floppy disk) image, the most common one is `.hdm`, though all FD images work similarly. If you're using FD images and you're game has more than one disk, it's recommended that you create an m3u file (see [Multidisk Playlists](https://amberelec.org/guides/disk-roms#multidisk-playlists-m3u-files)). Some games require multiple disks to be inserted at once, and an m3u file will always load the first two disks listed, so disk management will be much easier.

## Changing Disks

There are two methods for changing disks in the Sharp X68000, the in emulator disk loader and the RetroArch Disk Control.

RetroArch Disk Control works best with m3u files. When you need to swap disks, you can simply open the RetroArch menu, choose Disk Control, and then Eject Disk. You can then use Current Disk Index and Insert Disk to swap in a different disk.

The emulator also features a disk management menu. You can press L2 at any time to access it. From here, you can restart the system and select or eject FD 1 & 2 and HD 1 & 2. To eject a disk, select that disk with the B button, press down to select "EJECT", and then press B again.

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
