# Philips CD-i

## Overview

- Core: `same_cdi`
- Path(s): `cdi`
- Supported Extensions: `.chd .iso`
- Bios: `cdimono1.zip`

## Bios

The bios file `cdimono1.zip` can be obtained from a modern MAME romset
It should be put in `/roms/bios/same_cdi/bios/cdimono1.zip`. The file may also be called `cdimono1.7z`.

The file must contain `zx405037p__cdi_servo_2.1__b43t__llek9215.mc68hc705c8a_withtestrom.7201`and `zx405042p__cdi_slave_2.0__b43t__zzmk9213.mc68hc705c8a_withtestrom.7206`, if not you got an old version of `cdimono1.zip`.

## ROM Sets

The CD-i uses chd images compatible with MAME 0.239. 

- [CD-i XML softwarelist](https://raw.githubusercontent.com/mamedev/mame/mame0239/hash/cdi.xml) - Only compatible with clrmamepro
- [CD-i dat file](resources/dats/cdi.dat) - For use with any rom compiler

## Digital Video Cartridge games

The same_cdi core does not currently support DVC (Digital Video Cartridge) games.
