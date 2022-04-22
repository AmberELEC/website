# Sun Microsystems J2ME

## Overview

- Core: `freej2me`
- Path: `j2me`
- Supported Extension: `.jar`
- Website: [freej2me](https://github.com/hex007/freej2me)

## BIOS

freej2me requires the jdk to run. It will automatically download this the first time it's run, so please make sure to have the internet connected the first time you run a j2me game.

## Game Resolution

freej2me assumes that games are in 240x320 resolution, the highest resolution available for j2me games. If you have a game from a phone with a lower resolution, you may need to adjust the game resolution to compensate. The first time a game is launched, a folder is created in `/roms/j2me/freej2me` for it that contains a configuration file called `game.conf`. You can edit this file, either by connecting to a computer and editing it with a text editor, or by editing it using 351Files (which can be found in the `Tools` section).
