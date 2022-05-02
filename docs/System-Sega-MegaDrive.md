# Sega Mega Drive/Genesis (And Addons)

The Sega Mega Drive was released as the Genesis in North America. It has a CD addon called the Mega-CD, or the Sega CD in North America. It also had a 32 bit addon called the 32X.

- [Mega Drive Overview](#md-overview)
- [Mega-CD Overview](#cd-overview)
- [32X Overview](#32X-overview)
- [32X + Mega-CD Games](#32X--cd-games)
- [BIOS](#bios)

## MD Overview

- Cores:
  - `genesis_plus_gx` (default)
  - `genesis_plus_gx_wide`
  - `picodrive`
- Paths:
  - `megadrive`
  - `megadrive-japan`
  - `genesis`
  - `genh` (hacks)
- Supported Extensions: `.gen .bin .md .sg .smd .zip .7z`
- Bios: [Optional](#optional)
- Libretro Documentation:
  - [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
  - [PicoDrive](https://docs.libretro.com/library/picodrive/)

## CD Overview

- Cores:
  - `genesis_plus_gx` (default)
  - `picodrive`
- Paths:
  - `megacd`
  - `segacd`
- Supported Extensions: `.chd .cue .iso .m3u`
- Bios: [Required](#bios)
- Libretro Documentation:
  - [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
  - [PicoDrive](https://docs.libretro.com/library/picodrive/)

## 32X Overview

- Cores:
  - `picodrive` (default)
- Paths:
  - `sega32x`
- Supported Extensions: `.32x .bin .md .smd .zip .7z`
- Bios: None
- Libretro Documentation:
  - [PicoDrive](https://docs.libretro.com/library/picodrive/)

## 32X + CD Games

There are six games that required both the 32X and the Mega-CD. These games are: Corpse Killer, Fahrenheit, Night Trap, Slam City with Scottie Pippen, Supreme Warrior, and Surgical Strike.

These games are released on a CD medium, and should be put in the `megacd` or `segacd` folder so that they show up correctly, since they use CD style ROMs.

You'll need to change the emulator for these games to `picodrive`, as `genesis_plus_gx` does not support 32X games correctly.

## BIOS

BIOS files are required for the Mega-CD/Sega CD. Please use the following BIOS files:

| BIOS          | md5                              |
| bios_CD_E.bin | e66fa1dc5820d254611fdcdba0662372 |
| bios_CD_U.bin | 2efd74e3232ff260e371b99f84024f7f |
| bios_CD_J.bin | 278a9397d192149e84e820ac621a8edd |

BIOS files for the Mega Drive/Genesis are optional.

| BIOS          | md5                              |
| bios_MD.bin   | 45e298905a08f9cfb38fd504cd6dbc84 |
| sk.bin        | 4ea493ea4e9f6c9ebfccbdb15110367e |
| sk2chip.bin   | b4e76e416b887f4e7413ba76fa735f16 |
| areplay.bin   | a0028b3043f9d59ceeb03da5b073b30d |
| ggenie.bin    | e8af7fe115a75c849f6aab3701e7799b |
