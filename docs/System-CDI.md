# Philips CD-i

## Overview

- Core: `same_cdi`
- Path(s): `cdi`
- Supported Extensions: `.chd .iso`
- Bios: `cdimono1.zip`

## Bios

The bios file `cdimono1.zip` can be obtained from a modern MAME romset. It should be put in `/roms/bios/same_cdi/bios/cdimono1.zip`. The file may also be called `cdimono1.7z`.

## ROM Sets

The CD-i uses chd images compatible with MAME 0.239. 

- [CDi XML softwarelist](https://raw.githubusercontent.com/mamedev/mame/mame0239/hash/cdi.xml) - Only compatible with clrmamepro
- [CDi dat file](resources/dats/cdi.dat) - For use with any rom compiler

## Digital Video Cartridge games

The same_cdi core does not currently support DVC games.
