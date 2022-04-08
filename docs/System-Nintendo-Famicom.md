# Nintendo NES/Famicom

The NES was originally released as the Family Computer, or Famicom in Japan. It was later released as the Nintendo Entertainment System around the world. There was a Japan only disk addon for it called the Famicom Disk System.

- [NES Overview](#nes-overview)
- [Famicom Disk System (FDS) Overview](#famicom-disk-system-fds-overview)
- [BIOS](#bios)

## NES Overview

- Cores:
  - `nestopia` (default)
  - `fceumm`
  - `quicknes`
- Paths:
  - `famicom`
  - `nes`
  - `nesh` (Convenience folder for romhacks)
- Supported Extensions: `.nes .unif .unf .zip .7z`
- Libretro Documentation:
  - [Nestopia](https://docs.libretro.com/library/nestopia_ue/)
  - [FCEUmm](https://docs.libretro.com/library/fceumm/)
  - [QuickNES](https://docs.libretro.com/library/quicknes/)

## Famicom Disk System (FDS) Overview

- Cores:
  - `nestopia` (default)
  - `fceumm`
  - `quicknes`
- Path: `fds`
- Supported Extensions: `.fds .zip .7z`
- Libretro Documentation:
  - [Nestopia](https://docs.libretro.com/library/nestopia_ue/)
  - [FCEUmm](https://docs.libretro.com/library/fceumm/)
  - [QuickNES](https://docs.libretro.com/library/quicknes/)

## BIOS

The original NES does not require a BIOS file, but a BIOS is necessary for the Famicom Disk System.

| BIOS          | md5                              |
| disksys.rom   | ca30b50f880eb660a320674ed365ef7a |
