# Atari ST

## Overview

- Cores:
  - `hatari` (default)
  - `hatarisa`
- Path(s): atarist
- Supported Extensions: `.st .msa .stx .dim .ipf .m3u .zip .7z`

### File Formats

It's strongly recommended that you use `.st` or `.stx` files, or zipped versions of those files. `.msa` should also run well. Although nointro has indexed games in `.ipf` format, using this format is not recommended. While they will work, the system will launch into the OS window instead of directly into the game, and you'll have to double click to launch the game.

## BIOS

The Atari ST requires a boot image file called `tos.img` to be stored in your bios folder. There are actually many files that can fulfil this requirement, and not all of them will work with all games. The best version for basic ST gaming is 1.04, followed by 1.02. If you're using known STE games, you want version 1.62.

Here is a list of known good TOS Images and their hashes:

```
tos102uk.img
MD5:   b2a8570de2e850c5acf81cb80512d9f6
 
tos102us.img
MD5:   c1c57ce48e8ee4135885cee9e63a68a2
 
tos104uk.img
MD5:   036c5ae4f885cbf62c9bed651c6c58a8
 
tos104us.img
MD5:   736adb2dc835df4d323191fdc8926cc9
 
tos162uk.img
MD5:   a4cfd3c7412002dd693f69a15d4d961c
 
tos162us.img
MD5:   febb00ba8784798293a7ae709a1dafcb
```

Make sure to rename the file to `tos.img` when you put it in your BIOS folder.
