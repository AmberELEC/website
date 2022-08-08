# Nintendo N64

- [Overview](#overview)
- [Retrorun](#retrorun)
- [Mupen64Plus SA](#mupen64plus-sa)

## Overview

- Emulators/Cores:
  - Retroarch
    - `parallel_n64` (default)
    - `mupen64plus_next`
  - Retrorun
    - `parallel_n64`
  - Mupen64Plus Stand Alone
    - `mupen64plussa_glide64mk2`
    - `mupen64plussa_rice`
- Path(s): `/roms/n64`
- Supported Extensions: `.z64, .n64, .v64 .zip .7z`
- Bios: None

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

AmberELEC includes the Mupen64Plus standalone emulator as mupen64plussa. In order to use it, go into the Advanced Game Options or Advanced System Options and change the Emulator to either mupen64plussa/m64p_gl64mk2 or mupen64plussa/m64p_rice.

### Mupen64Plus SA Options

Mupen64Plus SA now supports 4:3 aspect resolution for the RG351P/M and the RG552, and this has been made the default. Fullscreen display is still available for those who want it.

### Video Plugins

Mupen64Plus SA supports two different video plugins: Glide64mk2 and Rice. These plugins are included on the system as cores, and you can choose between them when you select mupen64plussa as your emulator. In general, Glide64 has better accuracy and Rice has better performance, but you may notice visual glitches or incompatibilities with either of them. It's recommended to try using Rice, and then to fall back to Glide if you have issues.

### Control Configuration

There are now multiple controller configurations that can be selected from the ES configuration menu.

| N64 Button | Default | Rstick-C          |
|------------|---------|-------------------|
| Dpad R     | Dpad R  | Dpad R            |
| Dpad L     | Dpad L  | Dpad L            |
| Dpad U     | Dpad U  | Dpad U            |
| Dpad D     | Dpad D  | Dpad D            |
| A          | B       | B                 |
| B          | Y       | Y                 |
| Z Trig     | L1      | L1                |
| R Trig     | R1      | R1                |
| L Trig     | R3/Z    | R3/Z              |
| C-Right    | R2      | Right Stick R     |
| C-Left     | L2      | Right Stick L     |
| C-Up       | X       | Right Stick U     |
| C-Down     | A       | Right Stick D     |
| Start      | Start   | Start             |

You can also set the controller configuration to "Custom", and the system will read the controller configuration from `GAMES/gamedata/mupen64plussa/custominput.ini`. This file only contains entries for the P/M/V layout and MP/552 layout instead of thousands of unused entries, so it should be a little less confusing to edit. The previous `InputAutoCfg.ini` file is no longer supported. If you don't see a `custominput.ini` file, please launch MupenPlusSA once and it should auto generate.

The `[OpenSimHardware OSH PB Controller]` section is the controller configuration for the P, M, and V, and the `[GO-Super Gamepad]` section is the controller configuration for the MP and 552. By editing this section, you can change the button assignments that Mupen uses. To find out the button codes, please see the [Buttons Reference](/guides/advanced-topics#buttons-reference).


### Hotkeys

Mupen standalone only has a few hotkeys. They're listed below.

| Hotkey          | Button Combo   |
|-----------------|----------------|
| Quit            | Select + Start |
| Save State      | Select + R1    |
| Load State      | Select + L1    |
| Pause Emulation | Select + A     |
