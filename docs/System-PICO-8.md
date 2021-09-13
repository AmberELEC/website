# PICO-8

## Overview

- A native emulator for the fantasy console [PICO-8](https://www.lexaloffle.com/pico-8.php)
- Emulator/Core: [PICO-8](https://www.lexaloffle.com/games.php?page=updates) (_**RaspberryPi Version**_)
- Path: `/roms/pico-8`
- Supported Extensions: `.png .p8`

## Required Files
- pico8
- pico8_dyn
- pico8.dat

## Setup

1) Download the PICO-8 binary for Raspberry Pi from https://www.lexaloffle.com/games.php?page=updates
2) Un-zip that file and copy the following files to `/roms/pico-8`:
   - pico8
   - pico8_dyn
   - pico8.dat
3) Add any manually downloaded PICO-8 carts (aka .png or .p8 files) to `/roms/pico-8` 
   - There are 2 options for this depending on how you prefer things to work
   - If you prefer to start games directly from EmulationStation and don't need to see them in splore:
     - Add your .png or .p8 files directly to `/roms/pico-8`
   - If you prefer to be able to start games from ES **AND** be able to see them in splore
     - Create a folder called `roms/pico-8/carts` and store your .png or .p8 files there.
4) Turn on the display of PICO-8 in EmulationStation by doing the following
   - Press start while in EmulationStation to open the main menu
   - Scroll to Game Collection Settings, and press A
   - Select Systems Displayed, and press A
   - Scroll to Pico-8 and press A
   - Press B repeatedly to back out to the main menu and EmulationStation will refresh

After doing the above you will be able to (1) start your PICO-8 games directly from EmulationStation **or** (2) start PICO-8 splore by selecting "Start PICO-8" (Using option 2 will open PICO-8 without a game loaded which you can use to view your games or download more games directly if you are on wifi)

## Controls

|In-Game|RG351|
|-|-|
|X|B|
|O / Z|A|
|Start / Menu|Select|

## Additional Notes
- To quit PICO-8 and go back to ES:
  - if you started your game directly from ES then press the select button and choose shutdown from the menu
  - if you started PICO-8 through "Start PICO-8" then highlight a game in the splore menu, press the Select button, choose "Options" then choose "Shutdown PICO-8"