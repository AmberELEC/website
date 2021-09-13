# Core Availability

There are two cores provided by 351ELEC for PlayStation emulation: 

* PCSX ReARMed
* DuckStation(/SwanStation)

PCSX ReARMed is our default core for performance reasons.  DuckStation(/SwanStation) should only be needed for supporting some games that do not run correctly with PCSX ReARMed; it may be more accurate, but the performance on this hardware will often be worse.

# Recommendations for Disc Images
## Recommended Disc Image Formats
The simplest solution for users who just want to use the default core (PCSX-ReARMed) is to use CloneCD-format disc images (`.ccd`,. `.img`, and `.sub`).  You won't encounter issues with copy protection, crashes or other oddities that you might with other formats, and you'll retain compatibility with RetroAchievements.

The DuckStation and SwanStation cores currently only support CDRWIN-format disc images (`.cue` and `.bin`).  Because these disc images do not provide subchannel data (which PlayStation software commonly uses for copy protection), you will need to extract and provide the additional subchannel sidecar (`.sbi`) from your original game media.

## Compressed Disc Images
We've received enough complaints about compressed disc images that we generally recommend against using them.

Archived disc images (`.zip`, `.7z`) have been disabled (it requires full extraction prior to execution, leading to a usually multiple minute decompress time before launching the game, usually crashing as the 351's RAM was overflowed).  You will need to unzip your archived disc images.

Compressed disc images (`.chd`, `.pbp`) are not recommended, especially if you cannot verify the source they were generated from.  These may or may not work well; some users have their entire collections in these formats and report no issues, others report performance and compatibility issues; they may seem to work at first but you may see dropped frames later in game (usually from the game trying to load level data and stream music, effectively running two decompression tasks on top of the emulation, at the same time).  Feel free to test and use as you see fit, but do not bring performance questions to the Discord if you are using a compressed disc image.

## Multi-Disc Games
If you place a multi-disc game in your `psx` folder, you'll end up with an entry for each disc in your EmulationStation game list.  Optionally, it's possible to reduce this to a single entry per game by using playlists:

1. In `/storage/roms` (or in the root of your GAMES partition), create a new directory named `psxmulti` (or, use any name that EmulationStation isn't aware of).
2. Move all the multi-disc game disc images to the new `psxmulti` directory.
3. For each game, create a plain text file named after the disc image.  Starting on the first line, provide the absolute path for the first disc image  (probably `/storage/roms/psxmulti/GameName.cue`) .  If the path contains spaces, wrap the line in quotation marks: `"/storage/roms/psxmulti/Game Name (Disc 1) (v1.0).cue"`
4. Repeat on a new line for each disc, in numerical order.
5. Name the file `<Name of your Game>.m3u` (you can omit the `(Disc 1)` from the game title) and place it in the `psx` directory.
6. Refresh the game list.  EmulationStation will seamlessly display each `.m3u` file as a single entry alongside all your other single-disc games.

Before doing this to all your multi-disc games, you might want to inspect each game to see if this is even desirable.  For example, you probably would not want to do this for games like "Gran Turismo 2", or "Strider 1 & 2".

# Issues
## Controls and Rumble Not Working in Games

Early PlayStation games do not recognize the DualShock controller and will not accept input, so in recent builds we have configured the Standard controller as the default.  This allows most games to work without having to change the configuration, but means analog sticks and rumble will be disabled.  Users who have upgraded from earlier builds of 351ELEC may have non-functioning controls when trying to start some games.

To change the attached virtual controller:

RetroArch Quick Menu (SELECT+X) > Controls > Port 1 Controls > Change 'Device Type' to `standard` or `dualshock` as desired.  You may also need to set 'Digital to Analog' to `None`, depending on the game's behavior.

## Poor Performance

RK3326 CPU is not powerful enough to run all PlayStation games at full speed all the time.  You will see some stuttering and skipping in demanding games like Gran Turismo, Ape Escape and others.  Other games will appear to run flawlessly.  This will continue to be the case unless there is some significant optimization in the emulators themselves; 351ELEC team has no control over this.