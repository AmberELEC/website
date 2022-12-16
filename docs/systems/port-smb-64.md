# Super Mario 64

## Installation

To install the port of Super Mario 64, please do the following steps:

1) Follow the Retro Game Corps guide to building and installing the Super Mario 64 port: https://retrogamecorps.com/2020/12/28/guide-super-mario-64-port-on-rg351p/#Controls

2) Modify the `smb64.sh` launcher file. This can be found in your `Ports` folder under ROMs. It should look like this:

```sh
#!/bin/bash

. /etc/profile

/storage/roms/ports/sm64/sm64.us.f3dex2e

ret_error=$?

exit $ret_error
```

3) Copy the file `/storage/.config/SDL-GameControllerDB/gamecontrollerdb.txt` to `/storage/roms/ports/sm64/controller/gamecontrollerdb.txt`
4) Open the file `/storage/roms/ports/sm64/controller/gamecontrollerdb.txt` that you just copied over. Find the section with the header `# AmberELEC extra gamepads`. You'll need to replace that section with the following code:

```
# AmberELEC extra gamepads
03000000091200000031000011010000,OpenSimHardware OSH PB Controller,a:b0,b:b1,y:b3,x:b2,start:b7,back:b6,dpup:h0.1,dpleft:h0.8,dpdown:h0.4,dpright:h0.2,leftshoulder:b4,lefttrigger:b10,rightshoulder:b5,righttrigger:b11,leftstick:b8,guide:b9,leftx:a0~,lefty:a1~,rightx:a2,righty:a3,platform:Linux,
190000004b4800000011000000010000,GO-Super Gamepad,x:b2,a:b1,b:b0,y:b3,back:b13,start:b12,dpleft:b10,dpdown:b9,dpright:b11,dpup:b8,leftshoulder:b4,lefttrigger:b6,rightshoulder:b5,righttrigger:b7,leftstick:b14,guide:b15,leftx:a0,lefty:a1,rightx:a2,righty:a3,platform:Linux,
```
