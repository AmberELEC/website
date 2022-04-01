# Pre-Release Features

- [LaunchBox Importer](#launchbox-importer)
- [Aquaplus P/ECE](#aquaplus-pece)
- [Mupen64Plus SA Options](#mupen64plus-sa-options)
- [Laserdisc Games](#laserdisc-games)

## LaunchBox Importer

You can now export from LaunchBox to AmberElec. This allows you to transfer entire LaunchBox playlists, including games, metadata, and media, to your console.

Overview:
* Generate the LaunchBox folder with the "Export to Android"-Tool in Launchbox
* Put it in the /roms (the GAMES partition) folder next to all the systems
* Update Gamelists  in the ES Menu

You can even use the Workflow for Android like this to make it more comfortable:
* Connect the device to your Windows PC using SMP (//AmberElec) and chose the rom folder

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

## Aquaplus P/ECE

A standalone Aquaplus P/ECE emulator has been added. Documentation for it can be found under the [Aquaplus P/ECE System Page](System-Aquaplus-Piece)

## Mupen64Plus SA Options

Mupen64Plus SA now supports 4:3 aspect resolution for the RG351P/M and the RG552, and this has been made the default. Fullscreen display is still available for those who want it.

There are now also multiple controller configurations that can be selected from the ES configuration menu. The Default controller configuration is now the "Alt" control configuration listed in the [Mupen Control Configuration Section](System-N64#control-configuration-1), and the "RStick-C" configuration found there is also available. The previous default controller configuration is no longer available because it was insane.

You can also set the controller configuration to "Custom", and the system will read the controller configuration from `GAMES/gamedata/mupen64plussa/custominput.ini`. This file only contains entries for the P/M/V layout and MP/552 layout instead of thousands of unused entries, so it should be a little less confusing to edit. The previous `InputAutoCfg.ini` file is no longer supported.

If there are any other options or controller configurations you'd like to see supported, please ping `yonkuma` on the Discord server.

## Laserdisc Games

Laserdisc games are moving from the `daphne` folder to the `laserdisc` folder.

We're switching over our emulator for Laserdisc games, which has more than doubled the playable laserdisc games. We now support Daphne and Singe formatted games. You can find a preview of the upcoming changes on the [Laserdisc System Page](System-Laserdisc)
