# Advanced Topics

* [RetroArch Overrides](#retroarch-overrides)
* [Minimizing Input Lag](#minimizing-input-lag)
* [Buttons reference](#buttons-reference)
* [File Management](#file-management)
* [How to work with es_systems.cfg on AmberELEC](#how-to-work-with-es_systemscfg-on-amberelec)

## RetroArch Overrides

RetroArch overrides are disabled by default. This was done because overrides can cancel out options set in EmulationStation in ways that can cause confusion if the person doesn't remember they set up the override. That said, enabling overrides is fine, and can allow you to save settings that aren't available in the EmulationStation options. If you do, though, please remember to check your overrides before asking for help if your ES options aren't working.

Overrides are stored in `/storage/roms/gamedata/retroarch/config`.

To enable Overrides you have to start RetroArch directly via Tools.

Main Menu -> Settings -> User Interface -> Menu Item Visibility -> Quick Menu -> Show Save Game Overrides -> On
Back to Main Menu -> Configuration File -> Save Current Configuration

## Minimizing Input Lag

The following RetroArch settings have been recommended by Vanfanel to minimize input lag. Please note that while these settings will reduce input lag, they may be more difficult for the system and cause some performance penalties on harder to emulate systems.

- `RetroArch Main Menu` > `Settings` > `Video`, set `Threaded Video` to off
- `RetroArch Main Menu` > `Settings` > `Video` > `Synchronization`, set `Vertical Sync (VSync)` to off
- `RetroArch Main Menu` > `Settings` > `Video` > `Synchronization`, set `Max swapchain images` to 1
- `RetroArch Main Menu` > `Settings` > `Audio` > `Output`, set `Audio` to alsa
- `RetroArch Main Menu` > `Settings` > `Audio` > `Output`, set `Audio Latency (ms)` to 32
- `RetroArch Main Menu` > `Settings` > `Audio` > `Synchronization`, set `Synchronization` to on (should be on by default)

## Buttons reference

|Button|RetroArch Ref|Mupen Ref|
|----|----|----|
|A|15|P/M/V: button(0)<br />MP: button(1)|
|B|16|P/M/V: button(1)<br />MP: button(0)|
|X|17|P/M/V: button(2)<br />MP: button(2)|
|Y|18|P/M/V: button(3)<br />MP: button(3)|
| | | |
|L1|19|P/M/V: button(4)<br />MP: button(4)|
|R1|20|P/M/V: button(5)<br />MP: button(5)|
| | | |
|Start|21|P/M/V: button(6)<br /> MP: button(13)|
|Select|22|P/M/V: button(7)<br />MP: button(12)|
| | | |
|L3|23|P/M/V: button(8)<br />MP: button(14)|
|R3 (P/M)<br>F (V)|24|P/M/V: button(9)<br />MP: button(15)|
| | |
|L2|25|P/M/V: button(10)<br />MP: button(6)|
|R2|26|P/M/V: button(11)<br />MP: button(7)|
| | | |
|DPad U|Hat #0 up|P/M/V: hat(0 Up)<br />MP: button(8)|
|DPad D|Hat #0 down|P/M/V: hat(0 Down)<br />MP: button(9)|
|DPad L|Hat #0 left|P/M/V: hat(0 Left)<br />MP: button(10)|
|DPad R|Hat #0 right|P/M/V: hat(0 Right)<br />MP: button(11)|
| | | |
|Left Stick U|+1|P/M/V: axis(1+)<br />MP: axis(1-)|
|Left Stick D|-1|P/M/V: axis(1-)<br />MP: axis(1+)|
|Left Stick L|+0|P/M/V: axis(0+)<br />MP: axis(0-)|
|Left Stick R|-0|P/M/V: axis(0-)<br />MP: axis(0+)|
|Left Stick<br>X Axis| |P/M/V: axis(0+,0-)<br />MP: axis(0-,0+)|
|Left Stick<br>Y Axis| |P/M/V: axis(1+,1-)<br />MP: axis(1-,1+)|
| | |
|Right Stick U<br>(P/M/MP Only)|-3|P/M: axis(3-)<br />MP: axis(3+)|
|Right Stick D<br>(P/M/MP Only)|+3|P/M: axis(3+)<br />MP: axis(3-)|
|Right Stick L<br>(P/M/MP Only)|-2|P/M: axis(2-)<br />MP: axis(2+)|
|Right Stick R<br>(P/M/MP Only)|+2|P/M: axis(2+)<br />MP: axis(2-)|
|Right Stick<br>X Axis<br>(P/M/MP Only)| |P/M: axis(2+,2-)<br />MP: axis(2-,2+)|
|Right Stick<br>Y Axis<br>(P/M/MP Only)| |P/M: axis(3+,3-)<br />MP: axis(3-,3+)|

## File Management

AmberELEC includes a basic file manager called Dingux Commander.  This file manager allows you to manipulate files that are local or on a connected thumb drive.

### File Manager Button Configuration

| Button | Action |
|----|----|
| Y: | Open the system menu |
| X: | Open the action menu |
| B: | Action button |
| A: | Back button |
| L1: | Top of file selection |
| L2: | Bottom of file selection |

## How to work with es_systems.cfg on AmberELEC

In AmberELEC there is a global `es_systems.cfg` file that is located in `/usr/config/emulationstation/es_systems.cfg`. This file can not be altered to make sure that future updates can still add new features to the system. However, there is still the possibility to add your own extensions. You can create your own extensions to the standard `es_systems.cfg`.

### Adding systems config extensions

The directory for custom config files is `/storage/.config/emulationstation/`. You can create an extension to `es_systems.cfg` by putting a file named `es_systems_{custom}.cfg`, where `{custom}` is whatever you want, usually a description of what the extension does.

You can also name your file `es_systems.cfg`, but be aware that it will automatically be renamed to `es_systems.oldcfg-rename-to:es_systems_custom.cfg-if-needed` to make sure there is no old configuration file left from an old install. The renaming takes place on every system update. If you need this file or want to maintain your own `es_systems.cfg`, be sure to give it a custom tag `es_systems_custom.cfg`.

### Writing extension files

Extension files should be kept as small as possible. While you can copy and paste the entire default `es_systems.cfg` file, this is strongly discouraged, as it's more likely to break with future updates.

Anything not specified in your extension file will be read from the global `es_systems.cfg` file, even additional contents of a specific tag. For example, if you want to alter the path that the _Playstation One_ emulator uses for its roms to `/storage/roms/playstationone/`, you only need to specify the following:

```xml
<systemList>
  <system>
    <name>psx</name>
     <path>/storage/roms/playstationone</path>
  </system>
</systemList>
```

### Examples

#### Changing System Display Order

One easy way of changing the system display order is to assign order numbers to the console release fields, and then order by release.

```xml
<systemList>
  <system>
    <name>arcade</name>
    <release>0001</release>
  </system>
  
    <system>
    <name>mame</name>
    <release>0002</release>
  </system>
  
    <system>
    <name>fbn</name>
    <release>0003</release>
  </system>
</systemList>
```

Thanks to \_n3o\_ for this example
