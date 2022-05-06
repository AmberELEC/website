# Bandai Wonderswan (Color)

## Overview

- Cores:
  - `beetle_wswan` (default)
- Path(s): 
  - `wonderswan` for Wonderswan games only
  - `wonderswancolor` for Wonderswan Color games only
- Supported Extensions:
  - wonderswan: `.ws .zip .7z`
  - wonderswancolor: `.wsc .zip .7z`
- Bios: None
- Documentation: [Beetle Cygne](https://docs.libretro.com/library/beetle_cygne)

## Display Rotation

The Bandai Wonderswan was made so that games could be created in either portrait or landscape mode. To accomodate this, the emulator supports changing the display orientation by pressing `SELECT` (or by going into RA Quick Menu > Options > Display Rotation and selecting your desired rotation manually).

### Playing games vertically

While there's no way to hold the RG351V sideways that isn't awkward, it's possible to set up the RG351M, P, and MP to play in portrait orientation (although getting a good experience is a little bit complicated). By default, portrait games are set up so that  you rotate the console counter-clockwise, and the L and R buttons are the arrow keys and D-Pad down and left are A and B.

There's a more comfortable configuration that you can use to play vertically, but you'll have to [turn on Overrides](/guides/advanced-topics#retroarch-overrides).

Once you've turned on overrides, follow the following instructions:

1. Launch a game you'd like to play vertically (I usually use Tetris (Japan) on Wonderswan Color as my setup game)
2. Press Select (which rotates the screen), and then press Select+X (which will rotate the screen back and open the RA Quick Menu)
3. Scroll down and select `Controls` > `Port 1 Controls`
4. Set up the following mappings:
  - A Button -> X Cursor Left
  - B Button -> ---
  - X Button -> X Cursor Down
  - Select Button -> ---
  - Right Analog Y- (Up) -> Y Cursor Down
  - Right Analog Y+ (Down) -> Y Cursor Up
  - Right Analog X- (Left) -> Y Cursor Right
  - Right Analog X+ (Right) -> Y Cursor Left
5. Back out one level and choose `Save Game Remap File`
6. Back out two levels to the RA Main Menu, then go right to the Settings section, choose `Video` > `Output`, and set `Video Rotation` to 180 deg
7. Back out two levels to the RA Main Menu, then go left to the Main Menu section, choose `Quick Menu` > `Overrides`, and choose `Save Game Overrides`

You're now set up to play this game in vertical mode. You can turn your devices clockwise and use the right stick as your movement and X and A as A and B. These settings will be applied automatically whenever you launch the game.

You'll need to do this setup for each game that you want to play vertically, but instead of doing step 4 you can load the configuration that you set up for your initial game by going into `RA Quick Menu` > `Controls` > `Load Remap File` and choose the remap file for the game you used for initial setup (e.g. `Tetris (Japan).rmp`). This file should show up right away in both Wonderswan and Wonderswan Color, no matter which you did the initial setup on.
