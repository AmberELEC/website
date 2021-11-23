# N64

## Overview

- Cores:
  - `mupen64plus`
  - `mupen64plus_next`
  - `parallel_n64` (default)
  - `parallel_n64_gln64`
  - `mupen64plussa_glide64mk2`
  - `mupen64plussa_rice`
- Path(s): `/roms/n64`
- Supported Extensions: `.z64, .n64, .v64`

## Mupen64Plus SA

351ELEC includes the Mupen64Plus standalone emulator as mupen64plussa. In order to use it, go into the Advanced Game Options or Advanced System Options and change the Emulator to either mupen64plussa/m64p_gl64mk2 or mupen64plussa/m64p_rice.

### Video Plugins

Mupen64Plus SA supports two different video plugins: Glide64mk2 and Rice. These plugins are included on the system as cores, and you can choose between them when you select mupen64plussa as your emulator. In general, Glide64 has better accuracy and Rice has better performance, but you may notice visual glitches or incompatibilities with either of them. It's recommended to try using Rice, and then to fall back to Glide if you have issues.

### Control Configuration

The controller configuration file for mupen64plussa is stored in `GAMES/gamedata/mupen64plussa/InputAutoCfg.ini`. This file will only exist if you've started up mupen64plussa at least once. It's a big file, but the relevant section is the last one, called `[OpenSimHardware OSH PB Controller]`. By editing this section, you can change the button assignments that Mupen uses. To find out the button codes, please see the [Buttons Reference](Advanced-Topics#buttons-reference).

### Zipped Roms

Mupen64Plus SA & RetroRun do not support zipped roms.
