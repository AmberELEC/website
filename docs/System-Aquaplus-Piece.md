# Aquaplus P/ece

## Overview

- Cores:
  - `piemu` (default)
- Path(s): piece
- Supported Extensions: `.pex .pfi .pfs`

## BIOS

The Aquaplus P/ece requires a bios file that is freely available from their website. It's strongly recommended that you use version 1.18, as there are many games that do a version check and only recognize 1.1x versions. To get the bios file, download one of the following software packages. These packages are released as a self-extracting lzh file, so you can either run the exe (if you're on Windows), or you can change the name to update\*.lzh and unzip it wherever you'd like. The BIOS will be in a folder called `update`, and is nameed all.bin. Add this file to your 351ELEC bios folder.

| Firmware Version | Download                                    |
|------------------|---------------------------------------------|
| 1.20             | [https://aquaplus.jp/piece/dl/update120.exe](https://aquaplus.jp/piece/dl/update120.exe)  |
| <b>1.18</b> (recommended) | [https://aquaplus.jp/piece/dl/update118.exe](https://aquaplus.jp/piece/dl/update118.exe)  |
| 1.14a            | [https://aquaplus.jp/piece/dl/update114a.exe](https://aquaplus.jp/piece/dl/update114a.exe) |
| 1.14             | [https://aquaplus.jp/piece/dl/update114.exe](https://aquaplus.jp/piece/dl/update114.exe)  |
| 1.12a            | [https://aquaplus.jp/piece/dl/update112a.exe](https://aquaplus.jp/piece/dl/update112a.exe) |
| 1.12             | [https://aquaplus.jp/piece/dl/update.exe](https://aquaplus.jp/piece/dl/update.exe)     |

## Game files

Games for the P/ece come as `.pex` files. For many games, this file will be enough to run the game. There are some games that come packaged with a `.pfs` file. These games have dependencies, and require you to add the `.pex` file, the `.pfs` file, and any other file listed in the `.pfs` file to your games directory.

Piemu also supports loading hard drive images, which are `pfi` files. These files can be added to your piece directory the same way that `.pex` files are.
