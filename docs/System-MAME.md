# ROMs

The 'MAME 2003-Plus' core correlates to 'MAME Plus!', version 0.73.  To avoid issues with loading failures and missing ROMs, use the appropriate tools to construct a 'reference' ROM set against this exact version of 'MAME Plus!'.

# Seamless Integration of 'MAME 2003-Plus' Vertical Games on 351ELEC

**NOTE**: Rotation of the device for playing of vertical games really only makes sense for the RG351P/M.

1. Obtain and extract [MAME Plus v0.73](http://www.progettosnaps.net/download?tipo=mameplus_bin&file=/UI_Museum/Plus/MAME_Plus_0078_32b.7z), [ROMLister](https://www.waste.org/~winkles/ROMLister/) and [clrmamepro](https://mamedev.emulab.it/clrmamepro/).
2. Use ROMLister to generate two XML files, one for only games with a horizontal orientation and one for only games with a vertical orientation.
3. Load the XML file for the horizontal games into clrmamepro, and use its Rebuild tool to copy the horizontal games to the `arcade` directory on your SD card's GAMES partition.
4. Make a new directory inside the `arcade` directory called 'Vertical Games'.
5. Load the XML file for the vertical games into clrmamepro, and use its Rebuild tool to copy the vertical games to the `arcade\Vertical Games` directory on your SD card's GAMES partition.
6. In EmulationStation, rescan your game library to pick up the changes.
7. Inside the 'Arcade' system, open the 'Vertical Games' directory and start a game called 'Daioh' -- we're using this game specifically because its the only six-button vertical game I know of.  It is expected that the game will boot in the incorrect horizontal orientation for now.
8. From RetroArch's Quick Menu > Options, enable the 'TATE Mode' option.  Save a content directory core options file.
9. From RetroArch's Quick Menu > Controls > Port 1 Controls, map 90-degree rotated controls to the right analog stick (Left = Up, Right = Down, Up = Right, Down = Left), and then map all six fire buttons as desired (buttons 1-4 on the face buttons however you like, stuff 5 and 6 on R1 and R2 just to make sure they're hooked up to something; most games won't use them anyway).  Save a content directory remap file.
10. From RetroArch's Quick Menu > Restart to reboot the game.  Confirm the screen is rotated correctly.  Insert a coin with Select and press Start to start a game.  Confirm the right analog stick is mapped correctly and that you like the button layout.  Adjust as needed, deleting and saving the content directory core option or remap file, if necessary.
11. Exit the emulation (Hold Select and press Start twice), then re-launch the game to confirm the settings have stuck.

Now, all games inside that 'Vertical Games' directory will have identical rotation and control layouts.  Occasionally, you may find that some games lend themselves to rearranging the buttons differently.  For these exceptions, consider simply saving a **game** remap file, as your content directory remap is probably suitable for most games.