## Overview

- Emulators: 
  - `raze` (Standalone) (Default)
- Path(s): 
  - build
- Supported Extensions: `.build`

## Introduction

In order to play Build Engine games, you'll need the game files from the commercial games. For the most part, these can be purchased on GOG or Steam. You'll want to move the `.GRP` files into subfolders of the `build` directory in your ROMS folder. You'll also need to create your own `.build` files. These function as frontend files to point toward the GRP you want to play.

Sample directory tree:

```
/storage/roms/build/
├── duke3d/
│   └── DUKE3D.GRP
├── sw/
│   ├── sw
|   |   └── SW.GRP
│   ├── td
|   |   └── TD.GRP
│   ├── wt
|   |   └── WT.GRP
│   ├── track02.ogg
│   ├── track04.ogg
│   └── track...
├── Duke Nukem 3D.build
├── Shadow Warrior.build
├── Twin Dragon.build
└── Wanton Destruction.build
```

### How to create a .build file

The `.build` file is a simple text file that contains a `PATH` variable and an optional `GRP` variable. The `PATH` variable should point toward the subdirectory that contains all the files for the game you want to play. The `GRP` variable is unnecessary if a game contains only a single `GRP` file; in that case the correct file will be found automatically. Some games have multiple `GRP` files that represent the base game and different expansions. You'll need a separate `.build` file for each expansion, and the `GRP` variable points it toward the correct expansion

#### Examples

Content of `Duke Nukem 3D.build`:
```
PATH=duke3d
-- end of file --
```

Content of `Shadow Warrior.build`:
```
PATH=sw
GRP=SW.GRP
-- end of file --
```

Content of `Twin Dragon.build`:
```
PATH=sw
GRP=TD.GRP
-- end of file --
```
