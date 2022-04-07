# CD and DVD ROMs

- [Overview](#overview)
- [Compressed ROMs](#compressed-roms)
- [Uncompressed ROMs](#uncompressed-roms)

## Overview

CD-ROM and DVD-ROM based rom files can be a bit confusing. When CD-ROM burners first became publicly avaialable, many different companies made their own software for ripping and burning disks, and there were many proprietary formats created for storing that data. Because of that, there is no set standard for storing CD or DVD-ROM info. While the emulation community has settled on a few common formats, they aren't always the same between different software catalogers (e.g. no-intro, TOSEC), and sometimes are different across game systems in even a single catalog.

There are currently two types of ROM storage formats: compressed and uncompressed. Compressed ROMs offer two advantages: they require only one file to represent a disk, and they take up less hard drive space. Uncompressed roms tend to require at least two files, sometimes more, because they separate out data and track listings.

MAME is currently leading a push to standardize around the `.chd` (Compressed Hunks of Data) format, and that's the format that we recommend for all CD and DVD based roms. If you have roms in other formats, you can [convert them to chd](#converting-to-chd).

## Compressed ROMs

The most common compressed rom formats you'll run across are `.chd` and `.pbp`. We recommend `.chd` for all systems that support it. `.pbp` is an official format used by Sony for the PSP, so some PSP games will be in that format natively, but for other systems it can cause problems with achievements and lossy audio.

### Converting to CHD

CHD is compressed format championed by MAME. It has very good lossless compression, and allows you to store games in a format where one file contains everything you need for one disk.

Roms are converted to chd format using the `chdman` command line program. The most recent version of it comes with each release of MAME. If you don't feel comfortable with command line applications, there is also [namDHC](https://github.com/umageddon/namDHC/releases), a Windows frontend for chdman. You'll still need to download MAME and put the `chdman.exe` into the same directory as `namDHC.exe` in order to run it.

## Uncompressed ROMs

There are many uncompressed rom formats, but the most common that you'll encounter are `.cue+.bin` and `.ccd+.img`. These formats were created to give a CD burner instructions for how to write the tracks onto the CD. Because of this, these roms are usually split into a track listing (e.g. `.cue`, `.ccd`, `.toc`) and one or more data files (e.g. `.bin`, `.img`). There are a few formats, such as `.iso`, that don't require a separate track listing.

While it's possible to run a `.bin` file without a `.cue` file (or a `.img` without a `.ccd` file), these roms are incomplete, and you may have issues running the game. The most likely issue is that some of the game's music will be missing. If you do have a `.bin` file that dosen't have a `.cue` file, it's recommended that you source a different rom file, as it's possible the rom could be broken in other ways as well. If you don't want to or can't though, you can create a `.cue` file for your `.bin` using [Duckstation's Cue Maker](https://www.duckstation.org/cue-maker/).
