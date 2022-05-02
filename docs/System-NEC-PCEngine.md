# NEC PC Engine (CD)

The NEC PC Engine also goes by the name NEC TurboGrafx-16 in North America. There was also a CD addon for it, called either the CD-ROM²/Super CD-ROM² or the NEC TurboGrafx-CD, depending on the region. There was also an enhanced version of the PC Engine called the PC Engine SuperGrafx.

- [PC Engine Overview](#pc-engine-overview)
- [CD Addon Overview](#cd-addon-overview)
- [SuperGrafx Overview](#supergrafx-overview)
- [BIOS](#bios)

## PC Engine Overview

- Cores:
  - `beetle_pce_fast` (default)
  - `beetle_supergrafx`
- Paths:
  - `pcengine`
  - `tg16`
- Supported Extensions: `.pce .bin .zip .7z`
- Libretro Documentation:
  - [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/)
  - [Beetle SuperGrafx](https://docs.libretro.com/library/beetle_sgx/)
- Bios: None

## CD Addon Overview

- Cores:
  - `beetle_pce_fast` (default)
  - `beetle_supergrafx`
- Paths:
  - `pcenginecd`
  - `tg16cd`
- Supported Extensions: `.cue .ccd .chd .toc .m3u`
- Libretro Documentation:
  - [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/)
  - [Beetle SuperGrafx](https://docs.libretro.com/library/beetle_sgx/)
- Bios: [Required + Optional](#bios)

## SuperGrafx Overview

- Core: `beetle_supergrafx` (default)
- Paths: `sgfx`
- Supported Extensions: `.pce .sgx .cue .ccd .chd .zip .7z`
- Libretro Documentation:
  - [Beetle SuperGrafx](https://docs.libretro.com/library/beetle_sgx/)
- Bios: None

The SuperGrafx was an enhanced version of the PC Engine that was released two years after the original PC Engine release. It could play any regular PC Engine game, and additionally there were five exclusive games that couldn't run on the regular PC Engine, and two games with SuperGrafx specific enhancements.

## BIOS

Only `syscard3.pce` is required, but the others are also recommended for compatibility.

| BIOS          | md5                              |
| syscard3.pce  | 38179df8f4ac870017db21ebcbf53114 |
| syscard2.pce  |                                  |
| syscard1.pce  |                                  |
| gexpress.pce  |                                  |
