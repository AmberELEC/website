# Advanced Topics

* [RetroArch Overrides](#retroarch-overrides)
* [Buttons reference](#buttons-reference)
* [File Management](#file-management)
* [How to work with es_systems.cfg on 351ELEC](#how-to-work-with-es_systemscfg-on-351elec)

## RetroArch Overrides

RetroArch overrides are disabled by default. This was done because overrides can cancel out options set in EmulationStation in ways that can cause confusion if the person doesn't remember they set up the override. That said, enabling overrides is fine, and can allow you to save settings that aren't available in the EmulationStation options. If you do, though, please remember to check your overrides before asking for help if your ES options aren't working.

Overrides are stored in `/storage/roms/gamedata/retroarch/config`.

To enable Overrides you have to start the RetroArch directly (from Tools or the [Quick Access Menu](Menus#quick-access)).

Main Menu -> Settings -> User Interface -> Menu Item Visibility -> Quick Menu -> Show Save Game Overrides -> On
Back to Main Menu -> Configuration File -> Save Current Configuration

## Buttons reference

|Button|RetroArch Ref|Mupen Ref|
|----|----|----|
|A|15|0|
|B|16|1|
|X|17|2|
|Y|18|3|
| | | |
|L1|19|4|
|R1|20|5|
| | | |
|Start|21|6|
|Select|22|7|
| | | |
|L3|23|8|
|R3 (P/M)<br>F (V)|24|9|
| | |
|L2|25|10|
|R2|26|11|
| | | |
|DPad U|Hat #0 up|hat(0 Up)|
|DPad D|Hat #0 down|hat(0 Down)|
|DPad L|Hat #0 left|hat(0 Left)|
|DPad R|Hat #0 right|hat(0 Right)|
| | | |
|Left Stick U|+1|+1|
|Left Stick D|-1|-1|
|Left Stick L|+0|+0|
|Left Stick R|-0|-0|
|Left Stick<br>X Axis| |axis(0+,0-)|
|Left Stick<br>Y Axis| |axis(1+,1-)|
| | |
|Right Stick U<br>(P/M Only)|-3|-3|
|Right Stick D<br>(P/M Only)|+3|+3|
|Right Stick L<br>(P/M Only)|-2|-2|
|Right Stick R<br>(P/M Only)|+2|+2|
|Right Stick<br>X Axis<br>(P/M Only)| |axis(2+,2-)|
|Right Stick<br>Y Axis<br>(P/M Only)| |axis(3+,3-)|

## File Management

351ELEC includes a basic file manager called Dingux Commander.  This file manager allows you to manipulate files that are local or on a connected thumb drive.

### File Manager Button Configuration

| Button | Action |
|----|----|
| Y: | Open the system menu |
| X: | Open the action menu |
| B: | Action button |
| A: | Back button |
| L1: | Top of file selection |
| L2: | Bottom of file selection |

## How to work with es_systems.cfg on 351ELEC

In 351ELEC there is a global `es_systems.cfg` file that is located in `/usr/config/emulationstation/es_systems.cfg`. This file can not be altered to make sure that future updates can still add new features to the system. However, there is still the possibility to add your own extensions.

The directory for custom config files is `/storage/.config/emulationstation/`

You can either take care for all changes on your own or - the preferred option - just change the settings you want to change and leave the rest to the system. To do so create one or more files named `es_systems_ID.cfg` where _ID_ can be any identifier you like.

Let's assume you want to place your _Playstation One_ games in another directory (`/storage/roms/playstationone/`). To do so, you can create a file `es_systems_playstation.cfg` that only holds this information:

```xml
<systemList>
  <system>
    <name>psx</name>
     <path>/storage/roms/playstationone</path>
  </system>
</systemList>
```

That's all there is to do.

**Please note:** If there is a `es_systems.cfg` file in the `/storage/.config/emulationstation/` directory it will automatically be renamed to `es_systems.oldcfg-rename-to:es_systems_custom.cfg-if-needed` to make sure there is no old configuration file left from an old install. The renaming takes place on every system update. If you need this file or want to maintain your own `es_systems.cfg` please name it `es_systems_custom.cfg`.
