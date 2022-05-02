# Coleco ColecoVision

## Overview

- Cores:
  - `bluemsx` (default)
  - `gearcoleco`
  - `smsplus`
- Path: `coleco`
- Supported Extensions: `.bin .col .rom .zip .7z`
- Bios: [Required](#bios)
- Libretro Documentation:
  - [blueMSX](https://docs.libretro.com/library/bluemsx/)
  - [GearColeco](https://docs.libretro.com/library/gearcoleco/)
  - [SMSPlus](https://docs.libretro.com/library/smsplus/)

## BIOS

### blueMSX (default)

BlueMSX requires two folders, 'Databases' and 'Machines', that are available from the zip for the full version of blueMSX for windows. Go to the [blueMSX Download Page](http://bluemsx.msxblue.com/download.html). Ignore the radio select and "Download" button, and click on the link labled `blueMSXvYYYfull.zip`, where `YYY` is the current version number. Unzip the file and move the 'Databases' and 'Machines' folders to the `/roms/bios` folder on your ROMs card.

### GearColeco & SmsPlus

GearColeco and SmsPlus both require the same BIOS file, but with a different name. If you get the BIOS for one, you can simply duplicate it and rename the duplicate to satisfy the requirement for the other.

| BIOS             | Emulator   | md5                              |
| colecovision.rom | GearColeco | 2c66f5911e5b42b8ebe113403548eee7 |
| BIOS.col         | SmsPlus    | 2c66f5911e5b42b8ebe113403548eee7 |
