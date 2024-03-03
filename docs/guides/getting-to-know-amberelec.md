# Getting to Know AmberELEC

* [Controls and Hot Keys](#controls-and-hot-keys)
* [Adding Games](#adding-games)
* [Accessing the handheld over a network](#accessing-the-handheld-over-a-network)
* [Default Performance Settings](#default-performance-settings)
* [How to Use Bezels](#how-to-use-bezels)
* [How to Update](#how-to-update-amberelec) - Learn how to update to the newest version of AmberELEC
* [LaunchBox Importer](#launchbox-importer)
* [Adding Background Music to EmulationStation](#adding-background-music-to-emulationstation)
* [Netplay](#netplay)
* [Backups and Identity](#backups-and-identity) - Learn how to backup your settings
* [Cloud Backup](#cloud-backup)
* [Using the Movie Player](#using-the-movie-player)

## Controls and Hot Keys

EmulationStation Controls are active when you're in AmberELEC's rom selection menu, and RetroArch Hotkeys are active while you're playing (most) games.

### RetroArch Hotkeys
Every hotkey is commanded by combining the SELECT button with the desired function key as shown in the image below. For example, to do a savestate the hotkey is SELECT + R1. Brightness is an exception; it uses L3. The hotkeys for the 351V are the same as the ones for the P and M, with the exception that R3 on the P/M is the F (function) button on the V instead.

<img src="/images/rg351p-hotkeys-AmberELEC-purple.svg" alt="RG351P/M/MP graphical hotkey map" width="1000"/>

| Hotkey | RG351P/M/MP, RG552 | RG351V |
|----|----|----|
| RA Menu | SELECT + X,<br />L3 + R3 | SELECT + X,<br />L3 + F |
| Quit | SELECT + START (x2) | SELECT + START (x2) |
| Pause | SELECT + A | SELECT + A |
| Screenshot | SELECT + B | SELECT + B |
| FPS | SELECT + Y | SELECT + Y |
| Save State | SELECT + R1 | SELECT + R1 |
| Load State | SELECT + L1 | SELECT + L1 |
| Fast Forward | SELECT + R2 | SELECT + R2 |
| Rewind** | SELECT + L2 | SELECT + L2 |
| Save State Slot + | SELECT + Up | SELECT + Up |
| Save State Slot - | SELECT + Down | SELECT + Down |
| Brightness + | L3 + R1 | L3 + R1 |
| Brightness - | L3 + L1 | L3 + L1 |
| Kill Process | L2 + Select + Start | L2 + Select + Start |

(As a note, L3 and R3 are the buttons for pressing in the left or right analog stick)

** Rewind is currently disabled by default because enabling it can cause significant slowdown in games. It needs to be enabled before the hotkey will work.

### RetroRun Hotkeys

Retrorun is a separate emulator from RetroArch, with its own cores. It's included because there are some games it can play that RetroArch fails at. RetroRun is very barebones. There is no menu, there are no configuration files, and there is no controller configuration. What you see is what you get.

Following is a list of all the RetroRun hotkeys:

| Command | Key |
|----|----|
| Show Info | L3 + R3 | L3 + F |
| Quit | SELECT + START |
| Pause | SELECT + A | SELECT + A |
| Screenshot | SELECT + B | SELECT + B |
| FPS | SELECT + Y | SELECT + Y |
| Fast Forward | SELECT + R2 | SELECT + R2 |
| Kill Process | L2 + Select + Start |

### EmulationStation Controls

| Key | Function |
|----|----|
| A | Confirm |
| B | Cancel |
| START | Main Menu |
| SELECT | Quick Access,<br />View Options |
| X | Game Options |
| Y | Filter Games |

### Killing the Game Process

Game crashes are rare, but if you find that you cannot leave an emulator using the menu system, you can press **L2 + Select + Start** to kill the game process and return to EmulationStation.

### Volume Hotkeys
Unlike the RG351P, the RG351V and RG351MP have volume buttons instead of a volume wheel.
- Volume can be changed by holding down the volume buttons.
- As you hold longer, the speed of volume change increases.
- `L3 + R2/L2` serve as 'backup' hotkeys for adjusting volume on all devices. They cannot be held down and must be pressed repeatedly

### Brightness Hotkeys
On devices which have volume buttons (RG351V and RG351MP), brightness can be changed by holding down the `Fn` (RG351V) or `R3` (RG351MP) buttons along with the volume buttons.
- `Vol +` increases brightness and `Vol -` decreases.
- As you hold longer, the speed of brightness change increases.
- `L3 + R1/L1` serve as 'backup' hotkeys for adjusting brightness on all devices. They cannot be held down and must be pressed repeatedly.

## Adding Games

Games may be added by copying them over the network (rsync, sftp), or by moving the microSD card to your PC. It is important to follow the existing directory structure or your games may not be discovered by AmberELEC.  Be sure to always properly eject the microSD or power off the handheld before removing it.

For more infurmation on how to transfer files (including games) to your device, please see [Transferring files to/from your RG Device](transferring-files).

## Accessing the handheld over a network

When connected to a network, the handheld listens for connections on port 22 (SSH).  If your local network supports DHCP naming the host should appear on your network as 'AmberELEC'.

| Username | Password |
|----|----|
| root | amberelec |

{: .note.w-100.my-2 }
> **Note:** If you updated AmberELEC from 351ELEC without reflashing, your password may still be `351elec`. Please try that if `amberelec` doesn't work.

It is recommended that you change the root password or disable ssh while not in use using the Network Settings menu.  To change the root password type 'passwd' while connected to the handheld over ssh.

## Default Performance Settings

N64, PSP, and Dreamcast emulators default to the maximum performance option. This is the best mode for most games, but if you are experiencing issues you can change the setting back to on demand performance (auto) for the system or on a game-by-game basis.  All other emulators and ports default to on demand performance.

* Scroll to the emulator or port and press A to list your available games. If you are changing the setting for a game, scroll to the game.
* Press Select
* For system, select Advanced System Options, and press A
* For game, select Advanced Game Options, and press A
* Scroll to Enable Maximum Performance, and set to your preference
* Press B repeatedly to back out to the main menu

## How to use Bezels
Bezel support allows filling up empty space ("black bars") that occurs in many systems that don't exactly match the screen aspect ratio.

### Supported Systems
AmberELEC supports bezels for these systems:

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

## How to Update AmberELEC

To perform an update, download the .tar file from the latest version of AmberELEC.  Place the .tar in your games partition in the "update" folder, creating it if necessary.  Insert your SD card back into your device and turn it on.  When the update completes your device will reboot.

Alternately, you can scp the .tar file to ~/.update and reboot the handheld to perform an offline update as well.

## LaunchBox Importer

You can now export from LaunchBox to AmberELEC. This allows you to transfer entire LaunchBox playlists, including games, metadata, and media, to your console.

Overview:
* Generate the LaunchBox folder with the "Export to Android"-Tool in LaunchBox
* Put it in the /roms (the GAMES partition) folder next to all the systems
* Update Gamelists in the ES Menu

You can even use the Workflow for Android like this to make it more comfortable:
* Connect the device to your Windows PC using SMB (\\\\AmberELEC) and choose the rom folder

Step-by-step for Windows running LaunchBox:
* Select the ROMs you want to export (for convenience, you can create a playlist for this). You can choose ROMs for multiple systems at once if you like.
* Highlight all the ROMs you want to export
* Choose
    - Tools
    - Export to Android
    - Next
    - Export the selected games only
    - Next
    - Next
    - Next
  - Copy the files over to Your Device via USB (Yes, USB-Export is correct, this will bring up a general file-browser)
    - Browse
    - Select the ROM folder of your device (using the network share) and press OK
    - Next
    - Wait for the data to be copied over

On the device
* Enter the ES Menu and Update Gamelists

## Adding Background Music to EmulationStation

EmulationStation will playback any `.flac`, `.ogg` or `.mp3` files (and maybe others?) from the `/storage/roms/bgm` directory.  Simply add them, enable background music from EmulationStation's Main Menu > Sound Settings, and ensure the System Volume is not muted.

AmberELEC Discord user [Aaron Mealey](https://aaronmealey.bandcamp.com/) composed [a nice background droning piece for his RG351 device and uploaded it to his Bandcamp page](https://aaronmealey.bandcamp.com/track/sitting-waiting) to share with others.  Thanks, Aaron!

EmulationStation adds one second long fades to the beginning and end of each track; they are fast and simple, and can sound really bad.  Take that into account when processing your own tracks with an audio editor (for example, you can avoid hearing them by padding your audio with one second of silence on either end as desired).

When compressing audio, `.ogg` creates significantly smaller and better sounding files at even lower bitrates than `.mp3`.  For example, VBR 128kbps or 160kbps is normally as low as you want to go with `.mp3`, while `.ogg` at 80kbps and 96kbps very listenable.  At 96kbps, you can get over two hours of music in under 100MB in `.ogg`.  This is a great way to save space while getting more music on your device.

## Netplay

AmberELEC enables you to use retroarch's Netplay, for more information please visit the [RetroArch Netplay Section](https://www.retroarch.com/?page=netplay).

Please note that the players must have the same version of AmberELEC or in any case the same rom and the same core.
Unfortunately you cannot use it to trade Pokémon, more info [here](https://docs.libretro.com/guides/netplay-faq/).

Link to the [online lobby](http://lobby.libretro.com/).

## Backups and Identity

Found in: ES Menu > System Settings > Danger Zone! > Backup Identity

What does it do?
It backs up your current EmulationStation settings for menu selections, network details and core configurations.

Specifically the following files: 
- /storage/.config/distribution/configs/distribution.conf
- EmulationStation config from - /storage/.config/emulationstation/es_settings.cfg
- root password from /storage/.cache/shadow
- user ssh keys from /storage/.ssh
- host ssh keys from /storage/.cache/ssh
- network configuration from /storage/.cache/connman

What should it be used for?
If you are doing a reflash and want to retain your EmulationStation settings exactly as they are now you can use the file created from this to restore

Steps:
1) Before you start re-flash Open ES Menu > System Settings > Danger Zone! > Backup Identity
2) Press Yes
3) A file called identity.tar.gz will be created in /storage/roms/backup
4) Open the card on your computer and backup the Games partition
5) Reformat your SD card and reflash
6) Boot the device to create a new games partition
7) Turn off the device and connect the SD card to your computer
8) Copy your backed up Games Partition to the SD card
9) Insert your card and start the device
10) During reboot it will restore identity.tar.gz and your ES set up will be restored

## Cloud Backup

Starting from **AmberELEC - 20211122 "Pineapple Forest"** we introduced a tool to backup and restore your saves/states, screenshots and device backup to the cloud using rclone. Initial setup  requires the use of a commandline tool: `rclone` and should be considered an intermediate/advanced use case.

rclone requires initial authorization to the cloud be done on a **computer** and not on the AmberELEC device.  This is because most clouds require OAuth/web browser based authentication not available on the device itself.  If you are unfamiliar, a common example of OAuth is: a login option with google/etc on an unassociated website - this pops up a google page to login and verify (without sending your google user/password) to the other site.

Once the initial authentication is done, rclone will give you a `rclone.conf` file that can be stored on your AmberELEC device at: `/roms/gamedata/rclone/rclone.conf`

After installation, menu options under `Tools` in AmberELEC will allow you to backup and restore from the cloud on demand.

### Cloud Backup/Restore Installation Instructions

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
A: Saves, Screenshots, Backups. There are a few edge cases on where this things are stored depending on the emulator that makes it a bit complex. The exact description of what is backed up is: [here](https://github.com/AmberELEC/AmberELEC/blob/main/packages/sysutils/rclone/cloud-sync-rules.conf)

Q: Where can I find `cloud-sync-rules.conf` on my device. I don't see it?
A: The file is not created until Tools startup/backup is run. However, it can be found here: /roms/gamedata/rclone/

Q: Can I edit it?
A: We do not recommend editing this file, though it will work. At a minimum, you should keep a copy of the edited file as we reserve the right to replace it on upgrade.

Q: Will it save the port's savedata?
A: Maybe, not tested with all ports, if you think that some extensions can be added please let us know.

- [Rclone downloads](https://rclone.org/downloads/)
- [cloud-sync-rules.conf](https://github.com/AmberELEC/AmberELEC/blob/main/packages/sysutils/rclone/cloud-sync-rules.conf)

## Using the Movie Player
AmberELEC includes a movie player that can play a variety of file formats, and use the handheld controls to skip forward, skip backwards, pause, and exit.

### Movie Path
If the path is not created by default, it is ok to create it as below.  The directory name is case sensitive.
* /storage/roms/mplayer

### Supported Formats
* .mp4 .mkv .avi .mov .wmv .m3u .mpg

### Control Keys

| HotKey | Action |
|----|----|
| Play/Pause | A |
| Skip 5s | R1 |
| Skip 60s | Select + R1 |
| Back 5s | L1 |
| Back 60s | Select + L1 |
| Quit | Select + Start |
| Kill Process | L2 + Select + Start |
