# Sega Dreamcast

- [Overview](#overview)
- [File Extensions](#file-extensions)
- [BIOS](#bios)

## Overview

- Cores:
  - RetroArch
    - `flycast` (default)
  - RetroRun
    - `flycast`
- Path: `dreamcast`
- Supported Extensions: `.cdi .gdi .chd .m3u`
- Bios: [Required](#bios)
- Libretro Documentation:
  - [Flycast](https://docs.libretro.com/library/flycast/)

## File Extensions

Dreamcast games are generally stored as either `.gdi` or `.cdi` files. Currently `.gdi` is the preferred format because `.cdi` uses some lossy compression. Historically, `.cdi` was the traditional format, and some romhack patches may only function on `.cdi` files.

Like many CD-based systems, Dreamcast supports `.chd` format. `.gdi` files can be easily converted into `.chd` format by using the `.gdi` file as an input, but `.cdi` files are more complicated. It's probably easiest just to use `.cdi` files as they are. For more information on converting `.gdi` files, please see the documentation on [Converting to CHD](/guides/disk-roms#converting-to-chd).

## BIOS

The Dreamcast bios is required. It should be put in `/roms/bios/dc/dc_boot.bin`.

| BIOS          | md5                              |
| dc_boot.bin   | e10c53c2f8b90bab96ead2d368858623 |
