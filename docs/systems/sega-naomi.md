# Sega Naomi

## Overview

- Core: `flycast`
- Path(s): `naomi`
- Supported Extensions: `.zip .7z .lst .bin .dat`

The Naomi is an arcade system by Sega based on the Sega Dreamcast hardware. While the games are stored as MAME roms, they run significantly better under the `flycast` emulator, so they've been put into a different system folder as a workaround.

## ROM Sets

Naomi uses MAME roms. Currently, we recommend that you use roms compatible with the `MAME 0.235` romset. Please note that many Naomi ROMs require a `.chd` disk file in addition to the `.zip` file that holds the ROM data. These are also MAME compatible files, and should be specified by the MAME XML Dat file for the romset.

Please see the [Arcade](/guides/arcade) page for more information on creating romsets.

- [Naomi XML Dat](resources/dats/naomi.xml) - A dat file for use in clrmamepro, romcenter, or another rom compiler
