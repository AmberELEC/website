# TimeTop GameKing

## Overview

- Core: `mame`
- Path(s): gameking
- Supported Extensions: `.bin .zip .7z`
- BIOS: `gameking.zip`

## BIOS

The TimeTop GameKing requires the BIOS file `gameking.zip` from the current version of the MAME romset. The bios can be added to `/roms/bios` or `/roms/bios/mame`. Alternately, if you already have a full MAME romset in `/roms/mame`, the bios can be read from that folder.

| BIOS          | md5                              |
| gameking.zip  | 6c65ef87db30568d6df3f60307c9f49a |

## Built in Games

The GameKing comes with three built in games that are accessible when launching the system without a cartridge. These games are Drifter, 2003, and Miner. They can be accessed either by creating a dummy cartridge file. To do this, create an empty `.bin` file in your `roms/gameking` directory. For example, you can create an empty file called `Drifter + 2003 + Miner.bin`.
