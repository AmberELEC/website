# Laserdisc

- [Overview](#overview)
- [Setup](#setup)
  * [Daphne Games](#daphne-games)
  * [Singe Games](#singe-games)
- [Controls](#controls)

## Overview

- This folder is for Laserdisc games. It supports Arcade Laserdisc games and games released for the Action Max home console, as well as a few Arcade VHS games that are supported by laserdisc emulators. It supports games in both Daphne and Singe formats
- Emulator/Core: [Hypseus-Singe](https://github.com/DirtBagXon/hypseus-singe)
- Path: `/roms/laserdisc`
- Extensions: `.laserdisc`, `.daphne`

## Setup

Hypseus-Singe supports two different game formats: Daphne and Singe. Each of these formats has different games that they support, though there is some overlap (usually where Singe supports the HD version of a game that runs under Daphne).

The Daphne format is a little more complicated, and requires a rom file that goes in the `laserdisc/roms` directory, a `.daphne` folder that contains resources for Daphne configuration, and a `sound` folder that contains shared sound files that are used across games.

The Singe 1 and 2 formats are more self-contained, and require a `.laserdisc` folder that contains all the resources that the game requires to run.

Note: The `.daphne` and `.laserdisc` folder extensions are interchangeable.

### Daphne Games

- Video Tutorial: [https://youtu.be/ch3NP0tvZdA](https://youtu.be/ch3NP0tvZdA)
- Written Guide: [https://retrogamecorps.com/2021/01/20/guide-daphne-on-the-rg351p-and-rg350-devices/](https://retrogamecorps.com/2021/01/20/guide-daphne-on-the-rg351p-and-rg350-devices/)
> credit to [Retro Game Corps](https://www.youtube.com/channel/UCoZQiN0o7f36H7PaW4fVhFw) for creating the guides above

### Singe Games

Singe games come in a single folder that contains one or more `.singe` files, a `.txt` file and `.cfg` file, various image and sound files, and a `.m2v` video and `.ogg` audio file.

If you already have a complete singe folder that contains the `.m2v` and `.ogg` files required, simply add `.laserdisc` to the end of the folder name and add it to the `/roms/laserdisc` folder.

Some of the data for Singe 2 games can be downloaded for free, with the requirement that you provide your own video file. It can be downloaded from the [hypseus_singe_data repository](https://github.com/DirtBagXon/hypseus_singe_data/releases/). If you do download these data files, you'll need to provide your own `.m2v` video and `.ogg` audio files, since they are copyrighted material. The video and audio are often distributed as a single `.mp4` file that can be broken into these two separate files using ffmpeg and instructions included in the data folders. Once you have your folder set up with `.m2v` and `.ogg` files, simply add `.laserdisc` to the end of the folder name and add it to the `/roms/laserdisc` folder.

## Gamelist

{: .datatable }
| Game | Daphne | Singe 1 | Singe 2 | Release Type      | Developer                        |
|------|:------:|:-------:|:---:|--------------|------------------------|
| .38 Ambush Alley |    | &#10003; |  | Action Max   | Worlds of Wonder       |
| Altered Carbon Resleeved | | | 	&#10003; | Fangame      | Mazinger4life          |
| Asterix | | | &#10003; | Fangame      | Nado74                 |
| Astron Belt                              | Daphne              | Arcade       | Sega                   |
| Badlands                                 | Daphne              | Arcade       | Konami/Centuri         |
| Bega's Battle                            | Daphne              | Arcade       | Data East              |
| Blue Thunder                             | Singe 1             | Action Max   | Worlds of Wonder       |
| Cliff Hanger                             | Daphne or Singe     | Arcade       | Stern Electronics      |
| Cobra Command                            | Daphne              | Arcade       | Data East              |
| Crime Patrol                             | Singe 1/2           | Arcade       | American Laser Games   |
| Crime Patrol 2: Drug Wars                | Singe               | Arcade       | American Laser Games   |
| Conan the Boy                            | Singe 1             | Fangame      | Poiu                   |
| Daitarn 3                                | Singe 1             | Fangame      | Poiu                   |
| Dragon Trainer                           | Singe 1             | Fangame      | Poiu                   |
| Dragon's Lair                            | Daphne or Singe 1/2 | Arcade       | Cinematronics          |
| Dragon's Lair II : Timewarp              | Daphne or Singe 1/2 | Arcade       | The Leland Corporation |
| Esh's Aurunmilla                         | Daphne              | Arcade       | Funai                  |
| Fire and Ice                             | Singe 2             | Fangame      | Karis                  |
| Freedom Fighter                          | Singe 1             | Arcade       | Millenium Games Products|
| Galaxy Ranger                            | Daphne              | Arcade       | Sega                   |
| GP World                                 | Daphne              | Arcade       | Sega                   |
| Hydrosub: 2021                           | Singe 1             | Action Max   | Worlds of Wonder       |
| Interstellar                             | Daphne              | Arcade       | Funai                  |
| Last Bounty Hunter                       | Singe               | Arcade       | American Laser Games   |
| Mad Dog McCree                           | Singe               | Arcade       | American Laser Games   |
| Mad Dog McCree 2                         | Singe               | Arcade       | American Laser Games   |
| M.A.C.H. 3                               | Daphne              | Arcade       | Mylstar/Gottlieb       |
| Ninja Hayate                             | Singe 1/2           | Arcade       | Taito                  |
| Platoon                                  | Singe 2             | Prototype    |                        |
| Princess Mononoke                        | Singe 2             | Fangame      | Karis                  |
| Puss in Boots                            | Singe 2             | Fangame      | Poiu                   |
| Rescue of Pops Ghostly, The              | Singe 1             | Action Max   | Worlds of Wonder       |
| Road Blaster                             | Daphne              | Arcade       | Data East              |
| Samurai Jack                             | Singe 1             | Arcade       | Data East              |
| Sonic Fury                               | Singe 1             | Action Max   | Worlds of Wonder       |
| Space Ace                                | Daphne or Singe 1/2 | Arcade       | Cinematronics          |
| Space Pirates                            | Singe 1/2           | Arcade       | American Laser Games   |
| Star Blazer                              | Daphne              | Arcade       | Taito                  |
| Sucker Punch                             | Singe 2             | Fangame      | Karis                  |
| Super Don Quixote                        | Daphne              | Arcade       | Universal              |
| Thayer's Quest                           | Daphne              | Arcade       | RDI Video Systems      |
| Time Gal                                 | Singe 1/2           | Arcade       | Taito                  |
| Titan A.E.                               | Singe 2             | Fangame      | Karis                  |
| Triad Stone/Chantze's Stone (aka Strahl) | Singe 1/2           | LaserActive  | Data East              |
| Tron                                     | Singe               | Fangame      | Karis                  |
| Us vs Them                               | Daphne              | Arcade       | Mylstar/Gottlieb       |
| Who Shot Johnny Rock                     | Singe               | Arcade       | American Laser Games   |

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