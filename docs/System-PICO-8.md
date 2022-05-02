# Pico-8

- [Overview](#overview)
- [Required Files](#required-files)
- [Setup](#setup)
- [Controls](#controls)
  - [Quitting PICO-8](#quitting-pico-8)
- [Splore](#splore)

## Overview

- A native emulator for the fantasy console [Pico-8](https://www.lexaloffle.com/pico-8.php)
- Emulator/Core: [Pico-8](https://www.lexaloffle.com/games.php?page=updates) (_**RaspberryPi Version**_)
- Path: `/roms/pico-8`
- Supported Extensions: `.png .p8`

## Required Files
- pico8_64
- pico8.dat
- Pineapple Forest only: `pico8` and `pico8_dyn`

## Setup

1. Download the Pico-8 binary for Raspberry Pi from [https://www.lexaloffle.com/games.php?page=updates](https://www.lexaloffle.com/games.php?page=updates)
2. Un-zip that file and copy the following files to `/roms/pico-8`:
   - pico8_64
   - pico8.dat
   - If you're on Pineapple Forest, please also copy `pico8` and `pico8_dyn`. These files can be deleted after the next stable update.
3. Add any manually downloaded Pico-8 carts (aka .png or .p8 files) to `/roms/pico-8` 
   - There are 2 options for this depending on how you prefer things to work
   - If you prefer to start games directly from EmulationStation and don't need to see them in splore:
     - Add your .png or .p8 files directly to `/roms/pico-8`
   - If you prefer to be able to start games from ES **AND** be able to see them in splore
     - Create a folder called `roms/pico-8/carts` and store your .png or .p8 files there.
4. Turn on the display of Pico-8 in EmulationStation by doing the following
   - Press start while in EmulationStation to open the main menu
   - Scroll to Game Collection Settings, and press A
   - Select Systems Displayed, and press A
   - Scroll to Pico-8 and press A
   - Press B repeatedly to back out to the main menu and EmulationStation will refresh

After doing the above you will be able to (1) start your Pico-8 games directly from EmulationStation **or** (2) start Pico-8 splore by selecting "Start Pico-8" (Using option 2 will open Pico-8 without a game loaded which you can use to view your games or download more games directly if you are on wifi)

## Controls

| PICO-8       | Console        |
|--------------|----------------|
| X            | B              |
| O / Z        | A              |
| Start / Menu | Select / Start |

### Quitting PICO-8

- To quit PICO-8 and go back to ES:
  - if you started your game directly from ES then press the select button and choose shutdown from the menu
  - if you started PICO-8 through "Start PICO-8" then highlight a game in the splore menu, press the Select button, choose "Options" then choose "Shutdown PICO-8"

## Splore

PICO-8 has an online BBS system called Splore that allows you to find games inside of PICO-8. Using Splore requires an internet connection.

You can launch Splore from the Tools menu of AmberELEC. To do so, go into `Tools` and select `Run Pico-8`.

If you'd like to run Splore from inside the Pico-8 games menu, you can do so by creating an empty `.p8` file. For example, create an empty text file on Windows, rename it to `splore.p8`, and add it to `/roms/pico-8`. You can then launch Splore by starting that rom file.
