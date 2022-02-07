# Aquaplus P/ECE

## Overview

- Cores:
  - `piemu` (default)
- Path(s): piece
- Supported Extensions: `.pex .pfi .pfs`

Piemu **does not currently support saved games**. This is a limitation of the emulator.

## BIOS

The Aquaplus P/ECE requires a bios file that is freely available from their website. It's strongly recommended that you use version 1.18, as there are many games that do a version check and only recognize 1.1x versions.

To get the bios file, download one of the following software packages. These packages are released as a self-extracting lzh file, so you can either run the exe (if you're on Windows), or you can change the name to update\*.lzh and unzip it wherever you'd like. The BIOS will be in a folder called `update`, and is named `all.bin`. Add this file to your 351ELEC bios folder.

| Firmware Version | Download                                    |
|------------------|---------------------------------------------|
| 1.20             | [https://aquaplus.jp/piece/dl/update120.exe](https://aquaplus.jp/piece/dl/update120.exe)  |
| **1.18** (recommended) | [https://aquaplus.jp/piece/dl/update118.exe](https://aquaplus.jp/piece/dl/update118.exe)  |
| 1.14a            | [https://aquaplus.jp/piece/dl/update114a.exe](https://aquaplus.jp/piece/dl/update114a.exe) |
| 1.14             | [https://aquaplus.jp/piece/dl/update114.exe](https://aquaplus.jp/piece/dl/update114.exe)  |
| 1.12a            | [https://aquaplus.jp/piece/dl/update112a.exe](https://aquaplus.jp/piece/dl/update112a.exe) |
| 1.12             | [https://aquaplus.jp/piece/dl/update.exe](https://aquaplus.jp/piece/dl/update.exe)     |

## Game files

Games for the P/ECE come as `.pex` files. For many games, this file will be enough to run the game. There are some games that come packaged with a `.pfs` file. These games have dependencies, and require you to add the `.pex` file, the `.pfs` file, and any other file listed in the `.pfs` file to your games directory.

Piemu also supports loading hard drive images, which are `pfi` files. These files can be added to your piece directory the same way that `.pex` files are.

## Finding games

The P/ece is an open source console, made to be community driven, and as such most of the software and games are legally available for free online. Aquaplus hosted a few game development competitions, and all of the entrants can be found on their website. In addition, Aquaplus released a few free games themselves, and various developers hosted games on their own websites.

Below are a few places to download free P/ECE games. Many of the websites and links are older and may have fallen off the internet, so if you see a game you're interested in with a dead link, please check if the site was archived in the [Wayback Machine](https://web.archive.org/).

| Link                                                      | Description |
|-----------------------------------------------------------|-------------|
| [Aquaplus Software](https://aquaplus.jp/piece/soft.html)  | Software and games released by Aquaplus. The first half of the page just lists commercial games that come with a P/ECE addon, but the bottom half of the page contains software and games that are free to download. |
| [December Contest Awards](https://aquaplus.jp/piece/contest/12gatsu.html) | Official development contest. Links to games can be found on the bottom half of the page. |
| [January Contest Awards](https://aquaplus.jp/piece/contest/01gatsu.html) | Official development contest. Links to games can be found on the bottom half of the page. |
| [Febuary Contest Awards](https://aquaplus.jp/piece/contest/02gatsu.html) | Official development contest. Links to games can be found on the bottom half of the page. |
| [Megastore Cup](https://aquaplus.jp/piece/contest/ms_cup.html) | An official development contest co-hosted with Megastore magazine. Links to games can be found on the bottom half of the page. |
| [kuni's junk](http://www.susami.co.jp/kuni/junk/junk.htm) | Games made by the developer kuni. There are five P/ece games on this page, all labeled with P/ECE用. |
| [ABA Games](http://www.asahi-net.or.jp/~cs8k-cyu/misc.html) | Games made by ABA Games. There are another five games on this page, make sure to check for the P/ECE label in the bottom right of the card. |
