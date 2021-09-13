## Overview

- A native emulator for [ScummVM](https://www.scummvm.org)
- Emulator/Core: ScummVM (Stand Alone)
  - Current Package Version: [49053f2b9bbf691c88a5b6485f9d942c750851d3](https://github.com/scummvm/scummvm/commit/49053f2b9bbf691c88a5b6485f9d942c750851d3)
- Path(s): 
  - games should be stored in `/roms/scummvm/games`
  - settings will be stored in `/roms/gamedata/scummvm`
- Supported Extensions: `.sh .svm .scummvm`
- **ScummVM is hidden by default:** To display it, please go to `Start > Game Collection Settings > Systems Displayed` and enable ScummVM

## Setup

1. Add a folder for each game you want to play under `/roms/scummvm/games`
   - Check the [ScummVM Wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) for each game to confirm you have the correct files for each
   - For example: if you want to to add the game "[Beneath a Steel Sky](https://wiki.scummvm.org/index.php/Beneath_a_Steel_Sky)"
     - Create a folder under `/roms/scummvm/games/` called "Beneath A Steel Sky" (i.e. `/roms/scummvm/games/Beneath A Steel Sky`)
     - Add the required files to that new folder (i.e. `SKY.CPT, sky.dnr, sky.sk`)
2. Display the ScummVM system in EmulationStation
   - Open the menu while in EmulationStation (i.e. Press Start)
   - Select `Game Collection Settings`
   - Select `Systems Displayed`
   - Check `ScummVM`
3. Generate .scummvm files for your games
   - Scroll to the ScummVM system in EmulationStation
   - Run `_Scan ScummVM Games.sh`
   - When that complete you will see a list of your games displayed