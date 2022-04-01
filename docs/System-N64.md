# Nintendo N64

- [Overview](#overview)
- [Retrorun](#retrorun)
- [Mupen64Plus SA](#mupen64plus-sa)

## Overview

- Emulators/Cores:
  - Retroarch
    - `parallel_n64` (default)
    - `parallel_n64_gln64`
    - `mupen64plus`
    - `mupen64plus_next`
  - Retrorun
    - `parallel_n64`
    - `parallel_n64_gln64`
  - Mupen64Plus Stand Alone
    - `mupen64plussa_glide64mk2`
    - `mupen64plussa_rice`
- Path(s): `/roms/n64`
- Supported Extensions: `.z64, .n64, .v64`

## Retrorun

### Control Configuration

| N64 Button | RG Button |
|------------|-----------|
| Dpad R     | Dpad R    |
| Dpad L     | Dpad L    |
| Dpad U     | Dpad U    |
| Dpad D     | Dpad D    |
| A          | B         |
| B          | Y         |
| Z Trig     | L2        |
| R Trig     | R1        |
| L Trig     | L1        |
| C-Right    | R2+A      |
| C-Left     | R2+Y      |
| C-Up       | R2+X      |
| C-Down     | R2+B      |
| Start      | Start     |

## Mupen64Plus SA

AmberElec includes the Mupen64Plus standalone emulator as mupen64plussa. In order to use it, go into the Advanced Game Options or Advanced System Options and change the Emulator to either mupen64plussa/m64p_gl64mk2 or mupen64plussa/m64p_rice.

### Video Plugins

Mupen64Plus SA supports two different video plugins: Glide64mk2 and Rice. These plugins are included on the system as cores, and you can choose between them when you select mupen64plussa as your emulator. In general, Glide64 has better accuracy and Rice has better performance, but you may notice visual glitches or incompatibilities with either of them. It's recommended to try using Rice, and then to fall back to Glide if you have issues.

### Control Configuration

The controller configuration file for mupen64plussa is stored in `GAMES/gamedata/mupen64plussa/InputAutoCfg.ini`. This file will only exist if you've started up mupen64plussa at least once. It's a big file, but the relevant sections are the last two, called `[OpenSimHardware OSH PB Controller]` and `[GO-Super Gamepad]`. The former is the controller configuration for the P, M, and V, and the latter is the controller configuration for the MP. By editing this section, you can change the button assignments that Mupen uses. To find out the button codes, please see the [Buttons Reference](Advanced-Topics#buttons-reference).

The default controller configuration is listed below, along with a couple of alternate controller configurations you can download and use. To use one of the alternate configurations, replace the `GAMES/gamedata/mupen64plussa/InputAutoCfg.ini` with one of the following ini files:

- [Rstick-C](resources/mupen64plussa/InputAutoCfg-Rstick-C.ini)
- [Alt](resources/mupen64plussa/InputAutoCfg-Alt.ini)

Make sure that you rename the alternate file to `InputAutoCfg.ini`.

| N64 Button | Default | [Rstick-C](resources/mupen64plussa/InputAutoCfg-Rstick-C.ini) | [Alt](resources/mupen64plussa/InputAutoCfg-Alt.ini) |
|------------|---------|-------------------|--------|
| Dpad R     | Dpad R  | Dpad R            | Dpad R |
| Dpad L     | Dpad L  | Dpad L            | Dpad L |
| Dpad U     | Dpad U  | Dpad U            | Dpad U |
| Dpad D     | Dpad D  | Dpad D            | Dpad D |
| A          | B       | B                 | B      |
| B          | Y       | Y                 | Y      |
| Z Trig     | R3/Z    | L1                | L1     |
| R Trig     | R1      | R1                | R1     |
| L Trig     | L1      | R3/Z              | R3/Z   |
| C-Right    | R2      | Right Stick R     | R2     |
| C-Left     | X       | Right Stick L     | L2     |
| C-Up       | L2      | Right Stick U     | X      |
| C-Down     | A       | Right Stick D     | A      |
| Start      | Start   | Start             | Start  |

### Hotkeys

Mupen standalone only has a few hotkeys. They're listed below.

| Hotkey          | Button Combo   |
|-----------------|----------------|
| Quit            | Select + Start |
| Save State      | Select + R1    |
| Load State      | Select + L1    |
| Pause Emulation | Select + A     |
