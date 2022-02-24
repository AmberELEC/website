# Laserdisc (Upcoming)

- [Overview](#overview)
- [Setup](#setup)
  * [Daphne Games](#daphne-games)
  * [Hypseus Singe Games](#hypseus-singe-games)
  * [Singe 2 Game Conversion](#singe-2-game-conversion)
- [Controls](#controls)

## Overview

- This folder is for Laserdisc games. It supports arcade and home Laserdisc games and games released for the Action Max home console. It supports games in both Daphne and Hypseus Singe (a.k.a. Singe 1) formats
- Emulator/Core: [Hypseus-Singe](https://github.com/DirtBagXon/hypseus-singe)
- Path: `/roms/laserdisc`
- Extensions: `.laserdisc`, `.daphne`

## Setup

Hypseus-Singe supports two different game formats: Daphne and Hypseus Singe (a.k.a. Singe 1). Each of these formats has different games that they support, though there is some overlap. Daphne is emulation, and uses a rom dump of the arcade machine to function. Singe is simulation, and combines video files with LUA code to simulate the machines.

The Daphne format is a little more complicated, and requires a rom file that goes in the `laserdisc/roms` directory, a `.daphne` folder that contains resources for Daphne configuration, and a `sound` folder that contains shared sound files that are used across games.

The Hypseus Singe format is more self-contained, and requires a `.laserdisc` folder that contains all the resources that the game requires to run.

Note: The `.daphne` and `.laserdisc` folder extensions are currently interchangeable.

### Daphne Games

- Video Tutorial: [https://youtu.be/ch3NP0tvZdA](https://youtu.be/ch3NP0tvZdA)
- Written Guide: [https://retrogamecorps.com/2021/01/20/guide-daphne-on-the-rg351p-and-rg350-devices/](https://retrogamecorps.com/2021/01/20/guide-daphne-on-the-rg351p-and-rg350-devices/)
> credit to [Retro Game Corps](https://www.youtube.com/channel/UCoZQiN0o7f36H7PaW4fVhFw) for creating the guides above

### Hypseus Singe Games

Hypseus Singe games (a.k.a. Singe 1 games) come in a single game folder that contains one or more `.singe` files, a `.txt` file and `.cfg` file, various image and sound files, and a `.m2v` video and `.ogg` audio file. It's important that the folder name match the primary `.singe` file name. For example, if the `.singe` file is called `maddog.singe`, the game folder *must* be called `maddog.laserdisc`.

If you already have a complete game folder for hypseus singe that contains the `.m2v` and `.ogg` files required, simply add `.laserdisc` to the end of the folder name, double check to make sure that the primary `.singe` file matches the `.laserdisc` game folder name, and add it to the `/roms/laserdisc` folder.

Since singe games are simulations rather than emulation, the code, resources, and metadata for the games are copy-left and freely available. The video and audio of the games are still copyrighted by the original rights holders and must be provided separately. The open source data for the games can be downloaded from the [hypseus_singe_data repository](https://github.com/DirtBagXon/hypseus_singe_data/releases/). It's distributed as a single package for all the available games, with each game having its own game folder. To play a game, you'll need to add your own `.m2v` video and `.ogg` audio files. If you have the original hardware, you can rip the video from the laserdisc to a `.mp4` file, and then follow the instructions in the `README.md` file found in the game folder. Once you have your game folder set up with `.m2v` and `.ogg` files, simply add `.laserdisc` to the end of each game folder that you want to use and add it to the `/roms/laserdisc` folder.

### Singe 2 Game Conversion

While Singe 2 games are currently not supported, it is possible to convert a Singe 2 game to Hypseus Singe format. Instructions for this conversion can be found on the [Using Singe games with Hypseus Singe](https://github.com/DirtBagXon/hypseus-singe/discussions/60) discussion.

All or almost all Singe 2 games have been converted to work with Hypseus Singe. Versions of the game that have undergone this conversion are usually called "xxx for hypseus singe".

## Gamelist

{: .datatable }
| Game | Daphne | Hypseus Singe | Folder Name | Release Type | Developer |
|------|:------:|:-------------:|-------------|--------------|-----------|
| .38 Ambush Alley | | &#10003; | 38ambushalley.laserdisc | Action Max | Worlds of Wonder |
| Altered Carbon | | &#10003; | carbon.laserdisc | Fangame | Mazinger4life |
| Asterix | | &#10003; | asterix.laserdisc | Fangame | Nado74 |
| Astron Belt | &#10003; | | placeholder.daphne | Arcade | Sega |
| Badlands | &#10003; | | placeholder.daphne | Arcade | Konami/Centuri |
| Bega's Battle | &#10003; | | placeholder.daphne | Arcade | Data East |
| Blue Thunder | | &#10003; | bluethunder.laserdisc | Action Max | Worlds of Wonder |
| Cliff Hanger | &#10003; | &#10003; | Daphne: cliff.daphne<br/>Singe: cliffhanger.laserdisc or cliff.laserdisc<br/>(Two singe versions exist)| Arcade | Stern Electronics |
| Cobra Command | &#10003; | | placeholder.daphne | Arcade | Data East |
| Crime Patrol | | &#10003; | SD: crimepatrol.laserdisc<br/>HD: crimepatrol-hd.laserdisc | Arcade | American Laser Games |
| Crime Patrol 2: Drug Wars | | &#10003; | SD: drugwars.laserdisc<br/>HD: drugwars-hd.laserdisc | Arcade | American Laser Games |
| Conan the Boy in the Future | | &#10003; | conan.laserdisc | Fangame | Poiu |
| Daitarn 3 | | &#10003; | daitarn.laserdisc | Fangame | Poiu |
| Dragon Trainer | | &#10003; | dragon.laserdisc | Fangame | Poiu |
| Dragon's Lair | &#10003; | | placeholder.laserdisc | Arcade | Cinematronics |
| Dragon's Lair II : Timewarp | &#10003; | | placeholder.laserdisc | Arcade | The Leland Corporation |
| Dragon's Lair II : Timewarp (enhanced) | | &#10003; | dl2e.laserdisc | Arcade | The Leland Corporation |
| Dragon's Lair TV Show | | &#10003; | dltv.laserdisc | Fangame | Poiu |
| Esh's Aurunmilla | &#10003; | | placeholder.daphne | Arcade | Funai |
| Fire and Ice | | &#10003; | fireandice.laserdisc | Fangame | Karis |
| Freedom Fighter | | &#10003; | freedomfighter.laserdisc | Arcade | Millenium Games Products |
| Galaxy Ranger | &#10003; | | placeholder.laserdisc | Arcade | Sega |
| GP World | &#10003; | | placeholder.laserdisc | Arcade | Sega |
| Hydrosub: 2021 | | &#10003; | hydrosub2021.laserdisc | Action Max | Worlds of Wonder |
| Interstellar | &#10003; | | placeholder.laserdisc | Arcade | Funai |
| Last Bounty Hunter, The | | &#10003; | SD: lbh.laserdisc<br/>HD: lbh-hd.laserdisc | Arcade | American Laser Games |
| M.A.C.H. 3 | &#10003; | | placeholder.laserdisc | Arcade       | Mylstar/Gottlieb       |
| Mad Dog McCree | | &#10003; | SD: maddog.laserdisc<br/>HD: maddog-hd.laserdisc | Arcade | American Laser Games |
| Mad Dog McCree 2 | | &#10003; | SD: maddog2.laserdisc<br/>HD: maddog2-hd.laserdisc | Arcade | American Laser Games |
| Ninja Hayate | | &#10003; | SD: hayate.laserdisc<br/>HD: hayate-hd.laserdisc<br/>alt: hayate-psx.laserdisc | Arcade | Taito |
| Platoon | | &#10003; | platoon.laserdisc | Prototype | Poiu (Reconstruction) |
| Princess Mononoke | | &#10003; | mononoke.laserdisc | Fangame | Karis |
| Puss in Boots | | &#10003; | pussinboots.laserdisc | Fangame | Poiu |
| Rescue of Pops Ghostly, The | | &#10003; | popsghostly.laserdisc | Action Max | Worlds of Wonder |
| Road Blaster | &#10003; | | placeholder.daphne | Arcade | Data East |
| Samurai Jack | | &#10003; | jack.laserdisc | Fangame | Poiu |
| Sonic Fury | | &#10003; | sonicfury.laserdisc | Action Max | Worlds of Wonder |
| Space Ace | &#10003; | | placeholder.laserdisc | Arcade | Cinematronics |
| Space Pirates | | &#10003; | SD: spacepirates.laserdisc<br/>HD: spacepirates-hd.laserdisc | Arcade | American Laser Games |
| Star Blazers | &#10003; | &#10003; | Singe: starblazers.laserdisc | Arcade | Taito |
| Sucker Punch | | &#10003; | suckerpunch.laserdisc | Fangame | Karis |
| Super Don Quixote | &#10003; | | placeholder.daphne | Arcade | Universal |
| Thayer's Quest | &#10003; | | placeholder.daphne | Arcade | RDI Video Systems |
| Time Gal | | &#10003; | SD: timegal.laserdisc<br/>HD: timegal-hd.laserdisc | Arcade | Taito |
| Time Traveler 3D | | &#10003; | timetraveler.laserdisc | Arcade | Sega |
| Titan AE | | &#10003; | titanae.laserdisc | Fangame | Karis |
| Triad Stone/Chantze's Stone (aka Strahl) | | &#10003; | SD: triad.laserdisc<br/>HD: chantze-hd.laserdisc<br/>HD alt: triad-hd.laserdisc | LaserActive | Data East |
| Tron | | &#10003; | tron.laserdisc | Fangame | Karis |
| Us vs Them | &#10003; | | placeholder.laserdisc | Arcade | Mylstar/Gottlieb |
| Who Shot Johnny Rock? | | &#10003; | SD: johnnyrock.laserdisc<br/>HD: johnnyrock-hd.laserdisc<br/>B&W version: johnnyrocknoir.laserdisc | Arcade | American Laser Games |

## Controls

|In-Game|RG351|
|-|-|
|Coin|Select|
|Start|Start|
|Button 1|A|
|Button 2|B|
|Button 3|Y|
|Pause|L2|
|Quit|R2|
