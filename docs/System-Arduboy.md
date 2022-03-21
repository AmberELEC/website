# Arduboy

## Overview

- Core: `Arduous`
- Path(s): `arduboy`
- Supported Extension: `.hex`

The Arduboy is a micro handheld based on Ardiuno hardware. Most software for the Arduboy is free and open source.

## Finding games

There are a number of places to find Arduboy games.

- [Arduboy Community Games](https://community.arduboy.com/c/games/35?order=op_likes) - The games section of the official Arduboy forum
- [Erwin's Arduboy Collection](https://arduboy.ried.cl/) - A curated list of Arduboy games
- [itch.io Arduboy Tag](https://itch.io/games/tag-arduboy) - itch.io games tagged with Arduboy

## Extensions

Currently Arduous only supports `.hex` files, which are compiled Arduboy games. Games are also distributed with the `.arduboy` extension, which is not currently supported (but may be in the future). `.arduboy` files are really just zip files that contain a `.hex` file and some other metadata and screenshots, so if you have a `.arduboy` game, you can rename it to `.zip` and extract it to get the `.hex` file.

Other extensions (e.g. `.ino`) are source code files and must be compiled into `.hex` before they can be played using Arduous.
