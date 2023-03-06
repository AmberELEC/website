# LaserDisc

- [Overview](#overview)
- [Setup](#setup)
  * [Daphne Games](#daphne-games)
  * [Singe Games](#singe-games)
  * [Action Max Games](#action-max-games)
  * [Singe 2 Game Conversion](#singe-2-game-conversion)
- [Controls](#controls)

## Overview

- This emulator supports arcade and home LaserDisc games. It supports both Daphne games and Singe games
- Emulator/Core: [Hypseus-Singe](https://github.com/DirtBagXon/hypseus-singe)
- Path: `/roms/laserdisc`
- Extensions: `.ld`, `.daphne`

## Setup

Hypseus-Singe supports two different game formats: Daphne and Singe. Each of these formats has different games that they support. Daphne is emulation, and uses a rom dump of the arcade machine to function. Singe is simulation, and combines video files with LUA code to simulate the machines.

The Daphne format is a little more complicated to use, and requires a rom file that goes in the `laserdisc/roms` directory and a `.daphne` folder that contains resources for Daphne configuration.

The Singe format is more self-contained, and requires a `.ld` folder that contains all the resources that the game requires to run.

### Daphne Games

- Video Tutorial: [https://youtu.be/ch3NP0tvZdA](https://youtu.be/ch3NP0tvZdA)
- Written Guide: [https://retrogamecorps.com/2021/01/20/guide-daphne-on-the-rg351p-and-rg350-devices/](https://retrogamecorps.com/2021/01/20/guide-daphne-on-the-rg351p-and-rg350-devices/)
> credit to [Retro Game Corps](https://www.youtube.com/channel/UCoZQiN0o7f36H7PaW4fVhFw) for creating the guides above

The guide above is mostly accurate to Hypseus-Singe, but the `sound` directory is no longer required. For any Daphne game, you only need the rom file (usually a `.zip` file) in the `roms/laserdisc/roms` folder, and a `.daphne` folder in the `roms/laserdisc` folder.

### Singe Games

Hypseus-Singe supports games in the Singe 1 format. The game folders need to be set up in a specific way, so it's easiest to use roms that were built specifically to be used with Hypseus Singe. DirtBagXon, the creator of Hypseus Singe, curates Singe folders that are built specifically for the emulator.

Singe games come in a single game folder that contains one or more `.singe` files, a `.txt` file and `.cfg` file, various image and sound files, and a `.m2v` video and `.ogg` audio file. It's important that the folder name match the primary `.singe` file name. For example, if the `.singe` file is called `maddog.singe`, the game folder *must* be called `maddog.ld`.

If you already have a complete game folder for hypseus singe that contains the `.m2v` and `.ogg` files required, simply add `.ld` to the end of the folder name, double check to make sure that the primary `.singe` file matches the `.ld` game folder name, and add it to the `/roms/laserdisc` folder.

Some Singe games have HD versions. It's recommended that you get the regular version instead; even the RG552 is not up to the task of running HD Singe games. Fan games also tend to be taxing, and may not play at full speed.

Since singe games are simulations rather than emulation, the code, resources, and metadata for the games are copy-left and freely available. The video and audio of the games are still copyrighted by the original rights holders and must be provided separately. The open source data for the games can be downloaded from the [hypseus_singe_data repository](https://github.com/DirtBagXon/hypseus_singe_data/releases/). It's distributed as a single package for all the available games, with each game having its own game folder. To play a game, you'll need to add your own `.m2v` video and `.ogg` audio files. If you have the original hardware, you can rip the video from the laserdisc to a `.mp4` file, and then follow the instructions in the `README.md` file found in the game folder. Once you have your game folder set up with `.m2v` and `.ogg` files, simply add `.ld` to the end of each game folder that you want to use and add it to the `/roms/laserdisc` folder.

### Action Max Games

Action Max games are not currently supported.

### Singe 2 Game Conversion

While Singe 2 games are currently not supported, it is possible to convert a Singe 2 game to Singe 1 format. Instructions for this conversion can be found on the [Using Singe games with Hypseus Singe](https://github.com/DirtBagXon/hypseus-singe/discussions/60) discussion.

All or almost all Singe 2 games have been converted to work with Hypseus Singe. Versions of the game that have undergone this conversion are usually called "xxx for hypseus singe".

## Gamelist

{: .datatable }
| Game | Daphne | Singe | Folder Name | Controls | Release Type | Developer |
|------|:------:|:-------------:|-------------|----------|--------------|-----------|
| Altered Carbon | | &#10003; | carbon.ld | | Fangame | Mazinger4life |
| Asterix | | &#10003; | asterix.ld | | Fangame | Nado74 |
| Astron Belt | &#10003; | | astron.daphne | | Arcade | Sega |
| Badlands | &#10003; | | badlands.daphne | | Arcade | Konami/Centuri |
| Bega's Battle | &#10003; | | bega.daphne | | Arcade | Data East |
| Cliff Hanger | &#10003; | &#10003; | Daphne: cliff.daphne<br/>Singe: cliff.ld | | Arcade | Stern ELECtronics |
| Cobra Command | &#10003; | | cobra.daphne | | Arcade | Data East |
| Crime Patrol | | &#10003; | crimepatrol.ld | | Arcade | American Laser Games |
| Crime Patrol 2: Drug Wars | | &#10003; | drugwars.ld | | Arcade | American Laser Games |
| Conan the Boy in the Future | | &#10003; | conan.ld | | Fangame | Poiu |
| Daitarn 3 | | &#10003; | daitarn.ld | | Fangame | Poiu |
| Dragon Trainer | | &#10003; | dragon.ld | | Fangame | Poiu |
| Dragon's Lair | &#10003; | | lair.daphne | Directions: Move<br/>A: Sword | Arcade | Cinematronics |
| Dragon's Lair II : Timewarp | &#10003; | | lair2.daphne | Directions: Move<br/>A: Sword | Arcade | The Leland Corporation |
| Dragon's Lair II : Timewarp (enhanced) | | &#10003; | dl2e.ld | Directions: Move<br/>A: Sword | Arcade | The Leland Corporation |
| Dragon's Lair TV Show | | &#10003; | dltv.ld | | Fangame | Poiu |
| Esh's Aurunmilla | &#10003; | | esh.daphne | | Arcade | Funai |
| Fire and Ice | | &#10003; | fireandice.ld | | Fangame | Karis |
| Freedom Fighter | | &#10003; | freedomfighter.ld | | Arcade | Millenium Games Products |
| Galaxy Ranger | &#10003; | | galaxyr.daphne | | Arcade | Sega |
| GP World | &#10003; | | gpworld.daphne | | Arcade | Sega |
| Interstellar | &#10003; | | interstellar.daphne | | Arcade | Funai |
| Last Bounty Hunter, The | | &#10003; | lbh.ld | | Arcade | American Laser Games |
| M.A.C.H. 3 | &#10003; | | mach3.ld | | Arcade | Mylstar/Gottlieb       |
| Mad Dog McCree | | &#10003; | maddog.ld | X: Shoot<br/>A: Reload | Arcade | American Laser Games |
| Mad Dog McCree 2 | | &#10003; | maddog2.ld | X: Shoot<br/>A: Reload | Arcade | American Laser Games |
| Ninja Hayate | | &#10003; | hayate.ld | | Arcade | Taito |
| Platoon | | &#10003; | platoon.ld | | Prototype | Poiu (Reconstruction) |
| Princess Mononoke | | &#10003; | mononoke.ld | | Fangame | Karis |
| Puss in Boots | | &#10003; | pussinboots.ld | | Fangame | Poiu |
| Road Blaster | &#10003; | | rb.daphne | | Arcade | Data East |
| Samurai Jack | | &#10003; | jack.ld | | Fangame | Poiu |
| Space Ace | &#10003; | | ace.daphne | | Arcade | Cinematronics |
| Space Pirates | | &#10003; | spacepirates.ld | | Arcade | American Laser Games |
| Star Blazers | | &#10003; | starblazers.ld | | Arcade | Taito |
| Sucker Punch | | &#10003; | suckerpunch.ld | | Fangame | Karis |
| Super Don Quixote | &#10003; | | sdq.daphne | | Arcade | Universal |
| Thayer's Quest | &#10003; | | tq.daphne | | Arcade | RDI Video Systems |
| Time Gal | | &#10003; | timegal.ld | | Arcade | Taito |
| Time Traveler 3D | | &#10003; | timetraveler.ld | | Arcade | Sega |
| Titan AE | | &#10003; | titanae.ld | | Fangame | Karis |
| Triad Stone/Chantze's Stone (aka Strahl) | | &#10003; | triad.ld | | LaserActive | Data East |
| Tron | | &#10003; | tron.ld | | Fangame | Karis |
| Us vs Them | &#10003; | | uvt.daphne | | Arcade | Mylstar/Gottlieb |
| Who Shot Johnny Rock? | | &#10003; | johnnyrock.ld | | Arcade | American Laser Games |

## Controls

| In-Game | Console |
|---------|---------|
| Coin | Select |
| Start | Start |
| Button 1| A |
| Button 2| B |
| Button 3| X |
| Test | L1 |
| Pause | L2 |
| Console | R2 |
| Service | R1 |
