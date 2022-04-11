# Arcade Emulation

- [Overview](#overview)
- [Emulator Specific Documentation](#emulator-specific-documentation)
- [Romsets](#romsets)

## Overview

Arcade emulation is more complicated than most other emulation. For most other emulation, if you have an emulator and a good rom file, you're ready to play. Even some bad rom files will work just fine. With arcade emulation, the romsets are specific to the emulator that you're using, and there are multiple different types of romsets that may or may not work.

The short version is that you should use "Non-Merged" romsets that are built for the specific version of the emulator that you're going to run them on.

If you want a better understanding of how arcade emulation works, the MAME [About ROMs and Sets](https://docs.mamedev.org/usingmame/aboutromsets.html) documentation explains the subject in detail. Specifically, the [Parents, Clones, Splitting, and Merging](https://docs.mamedev.org/usingmame/aboutromsets.html#parents-clones-splitting-and-merging) section should explain why you want to use "Non-Merged" romsets.
  
## Emulator Specific Documentation

- [MAME](System-MAME)
- [FinalBurn Neo](System-FBNeo)
- [LaserDisc](System-Laserdisc)
- [Neo Geo](System-Neo-Geo)
- [Atomiswave](System-Atomiswave)
- [Naomi](System-Naomi)

## Romsets

### Understanding Roms

What is a rom? The most common understanding of the term "rom" in emulation is a file representing a game that you play on an emulator. To understand arcade roms, though, it's important to know the more technical meaning of the term. ROM stands for "Read Only Memory", and was used to describe the contents of computer chips on arcade boards and in video game cartridges. A "ROM dump" was a dump of the data stored on a single chip into a file. Arcade emulation uses the term "rom" as a shorthand for that "ROM dump". Each "rom" is a representation of the data of a physical component from an arcade board, and games are usually composed of many of those roms.

For arcade emulators, a game is represented by a zip file. That zip file contains multiple "roms", components that are required for the game to run. If you open up an arcade zip file, you'll see all the files representing those components. Each one of those files is a rom.

Many arcade games used shared components, either because they shared a common arcade board design, or because they were a new version of an already existing game. Because of this, there are many roms that are used by multiple games. Storing a rom in every game zip that needs it causes the size of the collection to rise. Because of this, MAME and other arcade emulators have built a system where it doesn't matter if a rom is located in a particular zip, just that the rom is found somewhere inside a collection. This allows games to be stored more compactly, and with less information duplication. It also makes arcade emulation more difficult to understand than some console emulation.

### Understanding Romsets

Each version of MAME or FBNeo/FBAlpha contains a list of all the games it can play and all the roms that game needs to be played. When we say something about the "MAME 0.241 romset", the "MAME 2003-plus romset", or the "FBNeo romset", we're talking about the full set of roms needed to play all the games that can be played using that emulator.

If you don't want to use a full set of roms, you can create your own romset that only contains some of the games in the full romset. In fact, you can create a romset that contains just the roms needed to play a single game.

One popular type of romset is 1G1R, or "One Game One Rom". This is a set that only contains one version of each game so that your list isn't cluttered up by clones and different game versions. These romsets still need to work with the emulator you're running, so the easiest way to get a 1G1R romset is to start with a full romset and use a [romset management tool](#romset-management) and a parent/clone dat to filter it down.

### Dat Files

Dat files are files that are used to list and organize romsets. Each version of each emulator has its own dat file, which is a specification of the full romset for that emulator. Parent/clone (P/C) dat files are dat files that contain parent-child relationships between games, and thus can be used to generate a 1G1R romset.

While dat files are most useful for managing the complexity of arcade romsets, once you've learned to work with them you can use them for console systems as well. [Dat-o-matic](https://datomatic.no-intro.org) is a website that contains no-intro dats for all different systems, in all different formats. Any P/C XML dat from there can be used to filter a console's games down to a 1G1R romset using clrmamepro or Rom Center.

While there are a number of different formats for dat files, the most compatible and useful one these days is the parent/clone XML file.

### Romset Types

Because arcade romsets are so complex, people have come up with three organization types for storing roms. These types are non-merged, merged, and split.

- **Non-Merged**: Non-Merged romsets are romsets where games each have their own zip, and all of the duplicate rom files are included in each game zip. This means that there aren't parent dependencies for roms. This romset is ideal for a small curated collection, but takes up more space than the other two types. There are different levels of Non-Merged: Full non-merged (each rom zip contains everything needed to run, including bios and sample files), regular non-merged which exclude sample and bios files, and various levels in between.
- **Merged**: Merged romsets are romsets where parents and children are stored together in a single zip file. This is the most common format for roms to be stored in, since it takes up the least amount of space and is able to represent collections with the fewest number of zip files. It's important to know that there are also rom packages for "devices", which are common arcade chipsets, that are not included with a merged rom. Because of this, merged roms often won't launch on their own. If you have a merged rom that won't launch, please check to make sure that you have all necessary bios and device zips for the rom, as well as any sample files it may need. Merged roms aren't ideal for ES systems because there isn't an easy way to choose which rom version to launch from a merged rom. It may be ideal for a 1G1R (one game one rom) romset.
- **Split**: Split romsets are romsets where each game has its own zip file, but children only contain the files that are different from their parents. This can be ideal for an ES system that assumes that one file is one game because it will take up less space than a non-merged set, but you will need to be careful that all dependencies are present.

### Romset management

Building ROM Sets can be complicated. There are a number of tools available to make building ROM Sets easier.

- [Romcenter](https://www.romcenter.com/) - Romcenter is a GUI driven tool for curating ROM sets. It allows you to load in XML dat files and rebuild your collection into your preferred romset structure. It is a little simpler to get started with than clrmamepro
- [clrmamepro](https://mamedev.emulab.it/clrmamepro/) - clrmamepro is the standard tool for managing ROM sets. It is very powerful, but also a bit hard to get started with
- [ROMLister](https://www.waste.org/~winkles/ROMLister/) - ROMLister is a tool to filter ROM sets based on a wide variety of ROM metadata
