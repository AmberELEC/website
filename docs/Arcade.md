# Arcade Emulation

## Overview

Arcade emulation is more complicated than most other emulation. For most other emulation, if you have an emulator and a good rom file, you're ready to play. Even some bad rom files will work just fine. With arcade emulation, the romsets are specific to the emulator that you're using, and there are multiple different types of romsets that may or may not work.

The short version is that you should use "Non-Merged" romsets that are built for the specific version of the emulator that you're going to run them on.

If you want a better understanding of how arcade emulation works, the MAME [About ROMs and Sets](https://docs.mamedev.org/usingmame/aboutromsets.html) documentation explains the subject in detail. Specifically, the [Parents, Clones, Splitting, and Merging](https://docs.mamedev.org/usingmame/aboutromsets.html#parents-clones-splitting-and-merging) section should explain why you want to use "Non-Merged" romsets.
  
## Emulator Specific Documentation

- [MAME](System-MAME)
- [FBNeo](System-FBNeo)
- [LaserDisc](System-Laserdisc)
- [Neo Geo](System-Neo-Geo)
- [Atomiswave](System-Atomiswave)
- [Naomi](System-Naomi)

## Building ROM Sets

Building ROM Sets can be complicated. There are a number of tools available to make building ROM Sets more simple.

- [Romcenter](https://www.romcenter.com/) - Romcenter is a GUI driven tool for curating ROM sets. It allows you to load in XML dat files and rebuild your collection into your preferred romset structure. It is a little simpler to get started with than clrmamepro
- [clrmamepro](https://mamedev.emulab.it/clrmamepro/) - clrmamepro is the standard tool for managing ROM sets. It is very powerful, but also a bit hard to get started with
- [ROMLister](https://www.waste.org/~winkles/ROMLister/) - ROMLister is a tool to filter ROM sets based on a wide variety of ROM metadata
