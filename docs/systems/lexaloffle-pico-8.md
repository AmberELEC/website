# Lexaloffle PICO-8

- [Overview](#overview)
- [Setup](#setup)
- [Controls](#controls)
  - [Quitting PICO-8](#quitting-pico-8)

## Overview

- A native emulator for the fantasy console [Pico-8](https://www.lexaloffle.com/pico-8.php)
- Cores:
  - [Fake-08](https://github.com/jtothebell/fake-08) (default)
  - [PICO-8](https://www.lexaloffle.com/games.php?page=updates) (_**RaspberryPi Version**_) (recommended)
- Path: `/roms/pico-8`
- Supported Extensions: `.p8` (default) `.p8.png` (recommended) `.png`

## Setup

To run Pico-8 carts using the Fake-08 emulator, simply put `.p8` (not `.p8.png`) files in `/roms/pico-8`.

Using Fake-08 won't provide access to Splore (online game catalog) and may have compatibility issues with some games.

For a better experience, purchase a copy of PICO-8 and install the Raspberry Pi version of Pico-8 by doing the following:

1. Download the PICO-8 binary for Raspberry Pi from [https://www.lexaloffle.com/games.php?page=updates](https://www.lexaloffle.com/games.php?page=updates)
1. Un-zip that file and copy the following files to `/roms/pico-8`:
   - `pico8_64`
   - `pico8.dat`
1. You can now start the PICO-8 Splore using "Tools" > "Start Pico-8"

To launch carts from EmulationStation:
1. From the start menu select "Game Settings" > "Per System Advanced Configuration" > "Pico-8" and set the emulator to "Pico8: Pico8 64"
1. Add any manually downloaded PICO-8 carts `/roms/pico-8`

If you want to launch Splore from EmulationStation, create an empty file called `-Splore.p8` (or any name) in `/roms/pico-8`.

If you want to hide the `bbs` and `backup` folders, you can use "Edit Folder Metadata" from the "favorite" menu and enable "Hidden".

Additionally you can rename your carts to use the `.png` or `.p8` extension for cleaner names in EmulationStation, however carts without `p8` in the file extension won't be visible in the Splore file browser.

## Controls

| PICO-8       | Console        |
|--------------|----------------|
| X            | B              |
| O / Z        | A              |
| Start / Menu | Select / Start |

### Quitting PICO-8

- To quit PICO-8 and go back to ES:
  - if you started your game directly from EmulationStation then press the Start button and choose shutdown from the menu
  - if you started PICO-8 through "Start Pico-8" then highlight any game in the splore menu, press the Start button, choose "Options" then choose "Shutdown PICO-8"