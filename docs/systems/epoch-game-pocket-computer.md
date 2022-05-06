# Epoch Game Pocket Computer

## Overview

- Core: `mame`
- Path(s): gamepocketcomputer
- Supported Extensions: `.bin .zip .7z`
- BIOS: [Required](#bios)

## BIOS

The Epoch Game Pocket Computer requires the BIOS file `gamepock.zip` from the current version of the MAME romset. The bios can be added to `/roms/bios` or `/roms/bios/mame`. Alternately, if you already have a full MAME romset in `/roms/mame`, the bios can be read from that folder.

| BIOS          | md5                              |
| gamepock.zip  | 887479fe3c69a0b935c57a7a738e26c4 |

## Built in Games

The Game Pocket Computer comes with a built in game and a paint application that are accessible when launching the system without a cartridge. The game is called Puzzle Game, and the paint program is called Graphics Function. They can be accessed by creating a dummy cartridge file. To do this, create an empty `.bin` file in your `roms/gameking` directory. For example, you can create an empty file called `Puzzle Game + Graphics Function.bin`.

Once you've started the Game Pocket Computer with an empty game, you can switch between the Graphics Function and the Puzzle game by pressing Select.
