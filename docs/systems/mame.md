# MAME

## Overview

- Cores:
  - `mame2003_plus` (default)
  - `AdvanceMame`
  - `mame2000`
  - `mame2010`
  - `mame2015`
  - `mame2016`
  - `mame`
  - `fbneo`
  - `fbalpha2012`
  - `fbalpha2019`
- Path(s): `mame`, `arcade`
- Supported Extensions: `.zip .7z`

## ROM Sets

We support a variety of MAME romsets for greater compatibility and performance. Some romsets based on later versions of MAME don't run as well on the RG351, so it's generally advised that you use the `mame2003_plus` romset and emulator where possible. Other romsets may run decently on the RG552, and experimentation may be worthwhile, but you'll always have the best performance from the `mame2003_plus` romset.

Recommended emulators and ROM Sets
- `mame2003_plus`: An expanded `MAME 0.78` compatible romset, referred to as the `MAME 2003-Plus` romset. Recommended for all games supported by this set. [Complete Mame2003 Plus XML Dat File](https://raw.githubusercontent.com/libretro/mame2003-plus-libretro/master/metadata/mame2003-plus.xml)
- `mame2010`: An expanded `MAME 0.139` compatible romset, referred to as the `MAME 2010` romset. Games in this romset that aren't present in `mame2003_plus` will probably not run well on the RG351 [Complete Mame 2010 XML Dat File](https://raw.githubusercontent.com/libretro/mame2010-libretro/master/metadata/mame2010.xml)
- `mame`: The current mame running on the current romset. This is `MAME 0.250` at the moment. Dat files for mainline MAME can be found at [MAME Dats & XML Repository](https://www.progettosnaps.net/dats/MAME/)

Other emulator versions/romsets are included in case they have slightly better compatibility or performance, but are not recommended unless you want to get really into arcade emulation.

Please see the [Arcade](/guides/arcade) page for more information on creating romsets.
