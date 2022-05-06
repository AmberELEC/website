# Microsoft MSX & MSX2

## Overview

- Cores:
  - `bluemsx` (default)
  - `fmsx`
- Paths:
  - `msx`
  - `msx2`
- Supported Extensions: `.dsk .mx1 .mx2 .rom .zip .7z .m3u`
- Bios: [Required + Optional](#bios)
- Documentation:
  - [blueMSX](https://docs.libretro.com/library/bluemsx/)
  - [fMSX](https://docs.libretro.com/library/fmsx/)

## BIOS

### blueMSX (default)

BlueMSX requires two folders, 'Databases' and 'Machines', that are available from the zip for the full version of blueMSX for windows. Go to the [blueMSX Download Page](http://bluemsx.msxblue.com/download.html). Ignore the radio select and "Download" button, and click on the link labled `blueMSXvYYYfull.zip`, where `YYY` is the current version number. Unzip the file and move the 'Databases' and 'Machines' folders to the `/roms/bios` folder on your ROMs card.

### fmsx

The following BIOS files are required for fMSX.

| BIOS         | md5                              |
| MSX.ROM      | 364a1a579fe5cb8dba54519bcfcdac0d |
| MSX2.ROM     | ec3a01c91f24fbddcbcab0ad301bc9ef |
| MSX2EXT.ROM  | 2183c2aff17cf4297bdb496de78c2e8a |
| MSX2P.ROM    | 847cc025ffae665487940ff2639540e5 |
| MSX2PEXT.ROM | 7c8243c71d8f143b2531f01afa6a05dc |

The following BIOS files are optional for fMSX.

| BIOS        | md5                              |
| DISK.ROM    | 80dcd1ad1a4cf65d64b7ba10504e8190 |
| FMPAC.ROM   | 6f69cc8b5ed761b03afd78000dfb0e19 |
| MSXDOS2.ROM | 6418d091cd6907bbcf940324339e43bb |
| PAINTER.ROM | 403cdea1cbd2bb24fae506941f8f655e |
| KANJI.ROM   | febe8782b466d7c3b16de6d104826b34 |
