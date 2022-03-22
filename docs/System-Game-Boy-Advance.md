# Nintendo Game Boy Advance

## Paths
- `/roms/gba`
- `/roms/gbah` - Hacks

The only difference between the two folders is how they are displayed in EmulationStation (e.g. theming), and there is no requirement to put hacks in `gbah`. They both support the same extensions and cores.

## Extensions
- .gba .zip .7z

## BIOS
The GBA BIOS is optional, but to ensure maximum compatibility it is recommended to use it where you can. It needs to be named `gba_bios.bin` and should be 16KB. The md5 for the normal version of the GBA BIOS is `a860e8c0b6d573d191e4ec7db1b1e4f6`. Other revisions or graphics hacks of the BIOS may work just fine, though you do so at your own risk.

## Cores
- mGBA (default)
- gpSP
- VBA-M
- VBA Next
- Beetle GBA

In general, gpSP will perform better at the expense of accuracy (and hence may have compatibility issues or minor glitches) so it can be worth a try if having performance issues with a game not listed below; VBA-M, VBA Next and Beetle GBA (which is also a VBA fork) may also have accuracy issues.

## Useful core options
### Skip BIOS intro
When you have the GBA BIOS and are using it, this allows you to skip the intro. May be needed for some older homebrew games, if they lock up on the intro screen when booting and don't show a correct Nintendo logo (as real hardware would with a dirty cartridge).

### Idle loop removal
It's seemingly safe to set this to "Detect and Remove", which can give you a performance boost sometimes.

### Color Correction
Many GBA games have increased saturation to compensate for the original GBA model's terrible LCD screen, which can be especially noticeable with games also on SNES. This is a matter of personal preference, some like to set this to "Game Boy Advance" which changes the colours to approximate what it would look like on an original GBA screen. Setting it to "Game Boy Color" isn't intended to be used for GBA games, but it will desaturate it even further.

### Interframe Blending
Simulates the ghosting effect of the older LCD screens used on real hardware. "Smart" attempts to only do it when there are deliberate screen flickering effects, which some games use for transparency.

## Additional hardware
### Game Boy Player
mGBA can emulate the Game Boy Player, if you toggle the "Enable Game Boy Player Rumble" option to true, and restart the game. This will give you rumble in games that support it (Mario & Luigi: Superstar Saga, Pokemon Pinball: Ruby & Sapphire, some others that display the logo when booting up), but it comes with a few issues that are apparently due to the design of the hardware rather than anything that can be fixed with emulation improvements.

For example, in Mario & Luigi: Superstar Saga, this will result in very noticeable sprite flickering in cutscenes, and severe frame drops in the ocean levels. This is known to happen, and if this is a problem for you, you may want to leave this option off. But the rumble part does work.

## Games requiring special configuration or specific cores, or known to have issues

### Metroid: Zero Mission, Wario Land 4, Duke Nukem Advance, Doom
These can sometimes dip 1 or 2 FPS below full speed which can be somewhat noticeable, but if you enable "max performance" they should be fine, even with rewind enabled.

### Final Fantasy VI Advance
This port is known to drop below full speed on mGBA, some have reported success disabling rewind and enabling max performance. gpSP can run it at full speed, but is known to exhibit noticeable graphical glitches. The VBA forks don't seem to perform any better. These slowdowns seem to be more noticeable during the intro and cutscenes.

Some users have also reported that the [sound restoration hack](http://www.romhacking.net/hacks/657) improves performance significantly.

### The Adventures of Jimmy Neutron vs Jimmy Negatron
This game is known to perform worse than most other GBA games, and even with rewind disabled and max performance turned on, consistently falls below full speed with any other core than gpSP on these devices.

### Hello Kitty Collection - Miracle Fashion Maker
This game does not boot with the gpSP or VBA-M cores.

### Vast Fame unlicensed games (e.g. Digimon Ruby, Zook Man ZX4)
These games use custom copy protection that is only emulated by mGBA.

### Classic NES series
If you insist on playing these GBA versions instead of emulating the NES versions, note that they do not work with gpSP or Beetle GBA, and that low performance is likely to occur with VBA-M or VBA Next.

### GBA Video carts
If you really feel like watching these with GBA emulation, note that all GBA Video carts including the 32MB carts may exhibit poor performance with rewind enabled (which you don't need as the videos already have rewind functionality), and 64MB carts (used for full length movies) will only work with mGBA.
