# Beta Features

Please note that all beta features are subject to change without notice.

* [Cloud Backup](#cloud-backup)
* [How to use Bezels (!BETA ONLY!)](#how-to-use-bezels-beta-only)
* [Mupen64Plus SA](#mupen64plus-sa)

## Cloud Backup - Overview

Starting from 351ELEC vXX we introduced a tool to backup and restore your saves/states, screenshots and device backup to the cloud using rclone. Initial setup  requires the use of a commandline tool: `rclone` and should be considered an intermediate/advanced use case.

rclone requires initial authorization to the cloud be done on a **computer** and not on the 351ELEC device.  This is because most clouds require OAuth/web browser based authentication not available on the device itself.  If you are unfamiliar, a common example of OAuth is: a login option with google/etc on an unassociated website - this pops up a google page to login and verify (without sending your google user/password) to the other site.

Once the initial authentication is done, rclone will give you a `rclone.conf` file that can be stored on your 351ELEC device at: `/roms/gamedata/rclone/rclone.conf`

After installation, menu options under `Tools` in 351ELEC will allow you to backup and restore from the cloud on demand.

### Cloud Backup/Restor Installation Instructions

In order to add a remote to rclone you have to:
- [download rclone](https://rclone.org/downloads/) for your platform and extract it somewhere
- Open a command prompt/terminal inside the rclone folder and type the following:
    - ```
      rclone config
      add remote
      ```
    - After this, follow the instructions for your specific cloud-provieder
    - IMPORTANT: your remote must be named 351remote (all lowercase), other names will not work.  You can rename manually in `rclone.conf` if you forget.
    - When done, an rclone.conf file will be created. Type: `rclone config file` to display it's location

- Copy/move that rclone.conf in your sd card in /roms/gamedata/rclone/rclone.conf (you may need to create the `rclone` folder).
- Start the cloud backup or restore tool from the TOOLS section on your device

### Frequently Asked Questions
Q: What is exactly being backed up?
A: Saves, Screenshots, Backups.  There are a few edge cases on where this things are stored depending on the emulator that makes it a bit complex. The exact description of what is backed up is: [here](https://github.com/351ELEC/351ELEC/blob/main/packages/sysutils/rclone/cloud-sync-rules.conf)

Q: Where can I find `cloud-sync-rules.conf` on my device. I don't see it?
A: The file is not created until Tools startup/backup is run.  However, it can be founder here: /roms/gamedata/rclone/

Q: Can I edit it?
A: We do not recommend editing this file, though it will work.  At a minimum, you should keep a copy of the edited file as we reserve the right to replace it on upgrade.

Q: Will it save the port's savedata?
A: Maybe, not tested with all ports, if you think that some extensions can be added please let us know.

- [Rclone downloads](https://rclone.org/downloads/)
- [cloud-sync-rules.conf](https://github.com/351ELEC/351ELEC/blob/main/packages/sysutils/rclone/cloud-sync-rules.conf)


## How to use Bezels (!BETA ONLY!)

### Supported Systems
351ELEC supports bezels for these systems:

* Gameboy
* Gameboy Color
* Game Gear
* Supervision
* Pokemon Mini
* NeoGeo Pocket
* NeoGeo Pocket Color
* Wonderswan 
* Wonderswan Color

**Attention:** Do not enable decorations for other systems as this will break exisiting overrides for these systems.

### Activating Bezels
Bezels are activated by choosing a folder for _Decorations_ in _Advanced System Options_ or _Advanced Game Options_. You can either use the pre-configured folder that come with the system or create your own folder in `/roms/bezels/` - you can use the folders in `/tmp/overlays/bezels/` as a blueprint.

### Name matching
The bezels will be loaded in this order (if available):
1. Random bezels that match the full romname _Tetris (World) (rev. 1).1.cfg_
1. Single bezels that match the full romname _Tetris (World) (rev. 1).cfg_
1. Random bezels that match the full romname without parentheses _Tetris.1.cfg_
1. Single bezels that match the full romname without parentheses _Tetris.cfg_
1. Default random bezel _default.1.cfg_
1. Default single bezel _default.cfg_

### Random Bezels
If you have more than one bezel you can create more than one .cfg file. They have to be named with an additional number before the .cfg part like _Tetris.1.cfg_, _Tetris.2.cfg_ etc.

### Add Grids, Shadows or other overlays to a bezel
The .cfg files already support additional layers on top of a bezel. You can edit the .cfg files individually and configure shadow and grid in there.

```
overlays = 1
## The Bezel
overlay0_overlay = "default.png"
overlay0_full_screen = true
overlay0_normalized = true
## How many Overlays are active on top of the bezel
overlay0_descs = 2
## First Overlay for the bezel (Grid)
overlay0_desc0_overlay = "grid.png"
overlay0_desc0 = "nul,0.5,0.5,rect,0.5,0.5"
## Second Overlay for the bezel (Shadow)
overlay0_desc1_overlay = "shadow.png"
overlay0_desc1 = "nul,0.5,0.5,rect,0.5,0.5"
```

You can configure the additional number of overlays with `overlay0_descs = 2` and the type of the additional overlay with `overlay0_desc0_overlay = "grid.png"`.
In this config there are two additional layer active: grid and shadow. You can disable them by changing overlay0_descs = 2 to 1 for grid only, or to 0 for no additional layers.

For most standard-systems a shadow and grid png-file is included.

#### Use `generate-bezel-cfg.sh` to generate your own .cfg files
In `/usr/bin/` is a shell-scrip `generate-bezel-cfg.sh` to generate the .cfg files more easily:
In the folder where you want the .cfg to be created, just enter:
```
generate-bezel-cfg.sh -r"Tetris DX.gbc" -p"tetris-bezel.png" 
```
To generate a bezel.cfg for _Tetris DX.gbc_ that uses tetris-bezel.png in this folder.

Or you enter 
```
generate-bezel-cfg.sh -r"Tetris DX.gbc" -p"tetris-bezel1.png" -n1
generate-bezel-cfg.sh -r"Tetris DX.gbc" -p"tetris-bezel2.png" -n2
generate-bezel-cfg.sh -r"Tetris DX.gbc" -p"tetris-bezel3.png" -n3
```
To generate a random bezel set that displays tetris-bezel1.png, tetris-bezel2.png and tetris-bezel3.png randomly on every new start of the game.

You can add the toggles `-g`and `-s` to enable grid and shadows for each bezel as well.

## Mupen64Plus SA

351ELEC includes the Mupen64Plus standalone emulator as mupen64plussa. In order to use it, go into the Advanced Game Options or Advanced System Options and change the Emulator to either mupen64plussa/m64p_gl64mk2 or mupen64plussa/m64p_rice.

### Video Plugins

Mupen64Plus SA supports two different video plugins: Glide64mk2 and Rice. These plugins are included on the system as cores, and you can choose between them when you select mupen64plussa as your emulator. In general, Glide64 has better accuracy and Rice has better performance, but you may notice visual glitches or incompatibilities with either of them. It's recommended to try using Rice, and then to fall back to Glide if you have issues.

### Control Configuration

The controller configuration file for mupen64plussa is stored in `GAMES/gamedata/mupen64plussa/InputAutoCfg.ini`. This file will only exist if you've started up mupen64plussa at least once. It's a big file, but the relevant section is the last one, called `[OpenSimHardware OSH PB Controller]`. By editing this section, you can change the button assignments that Mupen uses. To find out the button codes, please see the [Buttons Reference](Advanced-Topics#buttons-reference).
