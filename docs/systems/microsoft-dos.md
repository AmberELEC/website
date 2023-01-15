# Microsoft DOS

## Overview

- Cores:
  - `dosbox_pure` (default)
  - `dosbox_core`
- Path(s): pc
- Supported Extensions: `.dosz`, disk images (iso, cue, img, ima, vhd) can be put into the .dosz

## Setup

### DOSBox Pure

The default DOS emulator is now DOSBox Pure.  The process of adding games that you own to DOSBox Pure is very simple, here is an example with One Must Fall 2097:

- On your PC open the game folder, in our example the "OMF" folder.
- Select all of the files and zip them creating "archive.zip".
- Rename the freshly created "archive.zip" into "Game Name.dosz", for example "One Must Fall 2097.dosz".
- On your device place the game into the "pc" folder on your games partition.
- Press Start, select Games Settings, and then Update Games Lists.
- Once you are back in EmulationStation press Start and select Scrape to scape your game metadata.
- Play!

*WARNING:* Windows defaults to hiding file extensions. Please make sure that you turn off "hide file extensions" in Windows to make sure that it isn't leaving a hidden `.zip` at the end of your `.dosz` file.

### DOSBox Core

DOSBox Core requires some additional setup. Please follow these instructions to set up the BIOS files.

You'll need the BASS and BASSMIDI libraries and the MT32 roms.

#### BASS libraries

- Go to [BASS downloads](https://www.un4seen.com/bass.html). In the top right, click on the download link for Linux. Scroll down to the Add-ons section and click on the Linux link for BASSMIDI.
- Unzip both files. Copy `bass[xx]-linux/libs/aarch64/libbass.so` and `bassmidi[xx]-linux/libs/aarch64/libbassmidi.so` to your BIOS folder.

#### MT32 roms

The MT32 roms are copyrighted material and cannot be shared. Like other BIOS files, you'll need to source them on your own. You'll need to add `MT32_CONTROL.ROM` and `MT32_PCM.ROM` to your BIOS folder.