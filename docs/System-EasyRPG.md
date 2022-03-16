# EasyRPG

## Overview

- An engine that plays RPG Maker 2000, RPG Maker 2003, and EasyRPG games
- Emulator/Core: Retroarch/EasyRPG
- Path(s): 
  - games should be stored in `/roms/easyrpg`
- Supported Extensions: `.zip .easyrpg .ldb`

## Bios

If you're connected to the internet, EasyRPG will download its bios files automatically on first launch.

If you don't have an internet connection, please follow these instructions.

1. Go to the [RPG Maker RTP Download Page](https://www.rpgmakerweb.com/run-time-package)
2. At the bottom of the page, download the RTP for both RPG Maker 2000 and RPG Maker 2003
3. Unzip the rpg2003_rtp_inststaller.zip file
4. Rename both `.exe` files to end with `.7z` instead. You should have `rpg2000_rtp_installer.7z` and `rpg2003_rtp_installer.7z`
5. Unzip the two 7z files using [7zip](https://www.7-zip.org/) or another archive program that can extract 7zip files
6. Create a folder called `rtp`
7. Rename the folder `rpg2000_rtp_installer` to `2000`, and the folder `rpg2003_rtp_installer` to `2003` and put them inside the `rtp` folder
8. Copy the `rtp` folder into your 351ELEC bios folder (`/storage/roms/bios`, or `GAMES/bios`)
