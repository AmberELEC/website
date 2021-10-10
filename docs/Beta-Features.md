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


## How to use Bezels
Bezel support allows filling up empty space ("black bars") that occurs in many systems that don't exactly match the screen aspect ratio.

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

### Bezel UI Overview
Bezels are activated by choosing a folder for _Decorations_ in _Advanced System Options_ or _Advanced Game Options_. You can either use the pre-configured folder that come with the system (`DEFAULT`) or create your own folder in `/roms/bezels/` - you can use the folders in `/tmp/overlays/bezels/` as a blueprint.

At the _Advanced System Options_ or _Advanced Game Options_ screen, you can also adjust _Decoration Options_.  This allows:

- Overriding **System**.  This allows choosing a different *system*.  For example, gameboy color (`gbc`) instead of game boy (`gb`)
- Overriding **Game**.  This allows specifying a specific game bezel.  Setting `NONE` will disable any game specific logic.
- `OVERLAYS` - allows setting the overlays provided by the system.  This overlays are automatically detected from `.png` files in the `<system>/overlays` directory. 

### Bezel Structure
System bezels directly use `.png` files.  Game specific bezels use `.cfg` files.  The `.cfg` file simply contains a relative reference to the `.png` file to use.  This is done as often multiple games should reference the same `.png` bezel.

If you have more than one bezel for a game you can create more than one .cfg file. They have to be named with an additional number before the .cfg part like _Tetris.1.cfg_, _Tetris.2.cfg_ etc.

The structure looks as follows:
```
<system>.png                            #System bezel
<system>/games/<rom name>.cfg           #Exact rom match - game specific bezel
<system>/games/<rom name>.<number>.cfg  #Exact rom match - random game specific bazel
<system>/overlays/<overlay name>.png    #System overlay (shadow/grid)
```

### Name matching
The bezels will be looked for in the following order.  The first matched will be used.

NOTE: The `<system name>` can be overriden in `Decoration Options` at the _Advanced System Options_ or the _Advanced Game Options_ level.  All following rules still apply.  If `<game>` override is set to none, none of the game specific options will be evaluated and only the `<system name>.png` will be checked.

1. A game specific override has been set in `Decoration Options` in the UI.
1. `<system name>/games/<full rom name>.cfg` The rom name matches exactly.  NOTE: `.cfg` is used instead of `.png`. Ex:  _Tetris (World) (rev. 1).cfg_
1. `<system name>/games/<full rom name>.<number>.cfg` The rom name matches exactly plus a number.  This is used for multiple bezels that should be selected randomly. Ex:  _Tetris (World) (rev. 1).1.cfg_
1. `<system name>/games/<rom name w/o parens>.cfg`.  Match the full romname without parentheses  Ex:  _Tetris.cfg_
1. `<system name>/games/<rom name w/o parens>.<number>.cfg`.  Match the full romname without parentheses plus a number plus a number.  This is is used for multiple bezels that should be selected randomly.  Ex:  _Tetris.1.cfg_
1. `<system name>.png`.  The system name matches the folder name in `roms`.  Ex: `gb.png`


### Add Grids, Shadows or other overlays to a bezel
Overlays can be added at the system level to add optional features such as shadows/grids/etc to the bezel.  Overlays will all default to on, but can be turned off in the UI

For most standard-systems a shadow and grid png-file is included.
## Mupen64Plus SA

351ELEC includes the Mupen64Plus standalone emulator as mupen64plussa. In order to use it, go into the Advanced Game Options or Advanced System Options and change the Emulator to either mupen64plussa/m64p_gl64mk2 or mupen64plussa/m64p_rice.

### Video Plugins

Mupen64Plus SA supports two different video plugins: Glide64mk2 and Rice. These plugins are included on the system as cores, and you can choose between them when you select mupen64plussa as your emulator. In general, Glide64 has better accuracy and Rice has better performance, but you may notice visual glitches or incompatibilities with either of them. It's recommended to try using Rice, and then to fall back to Glide if you have issues.

### Control Configuration

The controller configuration file for mupen64plussa is stored in `GAMES/gamedata/mupen64plussa/InputAutoCfg.ini`. This file will only exist if you've started up mupen64plussa at least once. It's a big file, but the relevant section is the last one, called `[OpenSimHardware OSH PB Controller]`. By editing this section, you can change the button assignments that Mupen uses. To find out the button codes, please see the [Buttons Reference](Advanced-Topics#buttons-reference).
