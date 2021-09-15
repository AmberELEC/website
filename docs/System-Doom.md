---
title: Doom
category: Supported Systems
layout: withsidenav
---

# Doom

## Overview

- Emulators: 
  - `lzdoom` (Standalone) (Default)
  - `prboom`
- Path(s): 
  - doom
- Supported Extensions: `.doom`

## Setup

### Introduction
351ELEC supports the Doom engine trough lzdoom (standalone).
It's possible to load mods and keep them in your gamelist beside your main Doom, Doom 2, SIGIL, Heretic and Hexen wads.
The system recognizes all the `.doom` files that can be placed in `/roms/doom` but it needs the original (not shareware) versions of the main games placed in `/roms/doom/*.wad`, the mods instead must be put into `/roms/doom/mods/*.wad, *.ipk3`.
However this is a standard that we are using, no one is forcing you t use this method unless you're sharing the .doom and the shareable mod files with the community (see each mod's licence about sharing).

Savefiles will be put into `/roms/gamedata/lzdoom/*.zds`

So a sample directory tree is like:

/roms/doom/<br>
./iwads    DIR<br>
./mods    DIR<br>
Castlevania.doom<br>
Doom.doom<br>
Doom_2.doom<br>
Heretic.doom<br>
Hexen.doom<br>
SIGIL.doom<br>
Simpsons_Doom.doom<br>
TNT.doom<br>

/roms/doom/iwads<br>
doom.wad<br>
doom2.wad<br>
heretic.wad<br>
hexen.wad<br>
plutonia.wad<br>
tnt.doom<br>
SIGIL_v1_21.wad<br>

/roms/doom/mods<br>
Castlevania.ipk3<br>
ulsimpdm.wad<br>

### How to create a .doom file
The file is simple and self explaining:

```
IWAD=/storage/roms/doom/iwads/doom.wad
MOD=/storage/roms/doom/mods/ulsimpdm.wad
-- end --
```

`IWAD` is the main base game file, in this case is `doom.wad`.
`MOD` is obviously the mod is loaded.
Please note that the names are case sensitive.

### Limitations
- Some mods can run very slow, sorry for Castlevania fans.
- Tough the shareware version of doom can be played with lzdoom it doesn't allow to load the mods, so you need a retail verson.

### Sharing (your) mods
If you created some .doom files and you want to share them with the community you are very welcome.
Actually the .doom repo is here.
You can even share the mod files if the licence allows it.
It's forbidden to share the copyrighted .wad files such as the retail version of doom.wad

### acridAxid's LZDOOM Configuration Recommendation

I'm a long time DOOM player and I'm very familiar with playing GZDOOM on desktop with a gamepad, so my button configuration translates to this format quite easily.  I think it's a good sane configuration that works across all the games.

#### Recommended Button Bindings
From DOOM's main menu, enter Options, then Customize Controls.  Each category below matches a control category in the menu.  Clear the existing mapping by pressing Y, then press B to configure, then press the desired gamepad button to bind it.

##### Actions

* Fire: R1
* Secondary Fire: L1
* Weapon Reload: X
* Use/Open: Y
* Jump: B
* Center View: R3

None of the base games support 'Weapon Reload', it will only be used with gameplay modifications that implement it.

Regarding the 'Jump' button, remember that DOOM originally did not have jumping.  The original DOOM maps won't but some community map projects will intentionally disable jumping because they don't want you to have it (as it may allow you to access areas they didn't intend you to get to); this is normal.

##### Weapons

* Next Weapon: R2
* Previous Weapon: L2

##### Inventory

* Activate Item: Dpad Down
* Next Item: Dpad Right
* Previous Item: Dpad Left

##### Other

* Toggle Automap: Dpad Up
* Pause: Start
* Invoke Menu: Select

#### Disabling Vertical Look

DOOM did not originally have mouse look, and honestly, playing maps that were originally intended for classic DOOM on a gamepad can get tiresome as you end up skewing the vertical axis when you don't mean to.  You can fix this by just disabling the axis: Main Menu > Options > Joystick Options > (gamepad name) > Set "Axis 4" (which should be set to 'Looking Up/Down') to 'None'.  You'll probably want to revert this when you play more complicated maps that use vertical space more liberally and aiming with it becomes more important.  

#### Enable Always Run

In classic DOOM, Run was toggled on by holding the Shift key which meant everyone needed to constantly hold that key down.  LZDOOM mirrors that functionality but gives us an option to always turn it on.

Main Menu > Options > Player Setup > Always Run: On

#### Alternative HUD

The original DOOM HUD is very ugly and antiquated.  This minimal configuration maximizes the viewable screen space:

* Main Menu > Options > HUD Options:
  * Scaling Options:
    * User Interface Scale: 2
    * HUD Preserves Aspect Ratio: Off
  * Alternative HUD:
    * Enable Alternative HUD: On
    * Show Secret Count: Off
    * Show Monster Count: Off
    * Show Item Count: Off
    * Show Berzerk: Off
    * Show Weapons: Off
    * Show Ammo For: Available Weapons
    * Show Time: Off
    * Ammo Dispaly Order: Text and Image
  * Message Options:
    * Center Messages: On
    * Detailed Save Messages: Off

I like turning on the angle crosshair with a 0.60 scale.

#### Other Enhancements

* Main Menu > Options > Display Options:
  * Rocket Trails: Sprites & Particles
  * Blood Type: Sprites & Particles
  * Bullet Puff Type: Sprites & Particles

If your screen brightness is cranked and you are still struggling to see, consider setting Gamma Correction: 1.20.

It may be tempting to enable Software Renderer > Transparency Render Mode: 'Precise', but it will crush your performance.

#### Gameplay Modifications

There's tons of great gameplay modifiers out there, but I will highlight 'Target Spy' specifically for handheld play.  It's a very noisy mod that can overload you with information, I recommend scaling it way back so it just draws braces around an enemy, helping you visually identify targets that can sometimes be really hard to see on small screens in dark environments:

* Main Menu > Options > Target Spy Options
  * Target Spy Enabled: On
  * Visuals >
    * Health Bar: Off
    * Health Numbers: Off
    * Name: Off
    * And Class Name, If Different: Off
    * Kill Confirmation: Off
    * Named Confirmation: Off
    * Additional Information: Off
    * Target Frame Size: 0.25
  * Target Filters > 
    * Everything in here should be set: Off