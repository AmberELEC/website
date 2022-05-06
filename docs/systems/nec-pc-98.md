# PC-98

## Overview

- Cores:
  - `np2kai` (default)
  - `nekop2`
- Path(s): pc98
- Supported Extensions: `.d98 .zip .98d .fdi .fdd .2hd .tfd .d88 .88d .hdm .xdf .dup .hdi .thd .nhd .hdd .hdn`

As with most computer systems, performance on the RG351 can vary pretty widely depending on the game. The Touhou games are some of the most popular on the system. Unfortunately, they are slightly outside of the RG351's reach. There are a lot of games that play just fine on the handheld though, including action games like Rusty.

There are a lot of supported extensions, but `.hdi` files are usually the easiest to use. These files are full hard drive dumps of an installed game, so for the most part they'll include any dependencies for the game. When running disk dumps (`.fdi`,`.fdd`,`.d88`,etc), you may need to preload a specific OS, and sometimes you'll have to install the game yourself, so it tends to be much simpler to simply use hard drive dumps.

## BIOS

np2kai requires quite a few BIOS files. These files are not fully compatible with the files included with Anbernic devices, so please use the listed md5 sums to verify your BIOS files. BIOS files for np2kai should be put in the `ROMS/bios/np2kai` folder, unlike most BIOS files.

### Required Files

| Filename | MD5 |
|-----|-----|
|np2kai/bios.rom|e246140dec5124c5e404869a84caefce|
|np2kai/itf.rom|e9fc3890963b12cf15d0a2eea5815b72|
|np2kai/sound.rom|caf90f22197aed6f14c471c21e64658d|
|np2kai/FONT.ROM|2af6179d7de4893ea0b705c00e9a98d6<br>alt: 693fd1da3239d4bbeafc77d211718fc5|
|np2kai/font.bmp|7da1e5b7c482d4108d22a5b09631d967|

### Optional Files

|Filename|
|-----|
|np2kai/bios9821.rom|
|np2kai/d8000.rom|
|np2kai/2608_BD.WAV|
|np2kai/2608_SD.WAV|
|np2kai/2608_TOP.WAV|
|np2kai/2608_HH.WAV|
|np2kai/2608_TOM.WAV|
|np2kai/2608_RIM.WAV|

## Controls

By default, the controls for the PC-98 won't function. You'll have to turn them on in the RetroArch menu, and probably will have to play around with the different control schemes on any given game. Many PC-98 games use mouse controls, others use the keypad, and a very select few can use gamepad controls.

To set up the controls, open the RetroArch Quick Menu (select+X while in a game), go to `Options`, and then scroll down near the bottom to `Joypad D-pad to Mouse/Keyboard/Joypad Mapping`. The option will be off by default. It needs to be turned on, and you'll have to select one of the options.

`Mouse` and `Keypad` are generally the most compatible options. Very few games are compatible with the `Atari Joypad`.

### RG351V Note

If you're using the RG351V, you'll need to change the mouse to the Left analog stick, as it defaults to the Right analogue stick. To do this, open the RetroArch quick menu, go to `Options`, `S2M(Joypad Analog Stick to Mouse) Mapping`, and select `L-stick`.

## CPU Clock Multiplier

The CPU Clock Multiplier is the one setting that really has an effect on the performance. The ideal CPU Clock Multiplier for the RG351 is 5, though you can push it up to 8 if you don't mind some audio and video stutters, and possibly as high as 14 if you're okay with a high amount of stutter.
