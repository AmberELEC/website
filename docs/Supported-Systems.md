# Supported Systems

This is a list of supported systems and the emulators/cores to run them, it will be updated regularly.

Note that because of lack of time, not all of these systems have been thoroughly tested, help is always appreciated if you want to test them and report back!

Every system needs to have the correct folder structure inside the base path (the base ROM path is `/storage/roms`), for example Super Nintendo needs ROMS inside `/storage/roms/snes`.
This path is actually a second partition on your SD card, for more information on how to add your games please refer to this article: [Adding Games](Getting-to-Know-351ELEC#adding-games)

You will also find the correct extensions, almost all cores support .zip and .7z files as well as those listed.

## Fully Playable Systems

The **bold** one is the default one.

|Manufacturer/System&#x2800;&#x2800;&#x2800;&#x2800;&#x2800;|Core/Emu|ROM Path|Extension| 
|---|---|---|---|---|
|[Amstrad<br/>CPC](System-Amstrad-CPC)|**crocods**<br />cap32|amstradcpc|.dsk .sna [crocods: .kcr]<br/>[cap32: .tap .cdt .voc .m3u .zip .7z]|
|Atari 800|**atari800**|atari800|.rom .xfd .atr .atx .cdm .cas .car .bin .a52 .xex .zip .7z|
|Atari<br/>2600|**stella-2014**<br />stella|atari2600|.a26 .bin .zip .7z|
|Atari<br/>5200|**a5200**<br />atari800|atari5200|.rom .xfd .atr .atx .cdm .cas .car .bin .a52 .xex .zip .7z|
|Atari<br/>7800|**prosystem**|atari7800|.a78 .bin .zip .7z|
|Atari<br/>Lynx|**handy**<br />beetle_lynx|atarilynx|.lnx .o .zip .7z|
|[Atari ST](System-Atari-ST)|**hatari**<br />HATARISA|atarist|.st .msa .stx .dim .ipf .m3u .zip .7z|
|[Aquaplus<br/>P/ECE](System-Aquaplus-Piece)|**piemu**|piece|.pex .pfi|
|[Bandai<br/>SuFami Turbo](System-Super-Nintendo-Entertainment-System#sufami-turbo)|**snes9x**|sufami|.st .zip .7z|
|[Bandai<br/>Wonderswan](System-Bandai-Wonderswan)|**beetle_wswan**|wonderswan|.ws .zip .7z|
|[Bandai<br/>Wonderswan Color](System-Bandai-Wonderswan)|**beetle_wswan**|wonderswancolor|.wsc .zip .7z|
|Coleco<br/>ColecoVision|**bluemsx**<br />gearcoleco<br />smsplus|coleco|.bin .col .rom .zip .7z|
|Commodore<br/>Amiga|**puae**<br />amiberry<br />uae4arm|amiga|.zip .uae .adf .dms .fdi .ipf .adz .lha .hdf .hdz|
|Commodore<br/>Amiga CD³²|**puae**<br />uae4arm|amigacd32|.iso .cue .chd .lha|
|Commodore<br/>C16 (PLUS/4)|**vice_xplus4**|c16|.d(64, 71, 80, 81, 82, 6z, 7z, 8z) .g(64, 41, 6z, 4z) .x64 .t64 .tap .prg .p00 .crt .bin .x6z .cmd .m3u .vsf .nib .nbz|
|Commodore<br/>C64|**vice_x64**|c64|.d(64, 71, 80, 81, 82, 6z, 7z, 8z) .g(64, 41, 6z, 4z) .x64 .t64 .tap .prg .p00 .crt .bin .x6z .cmd .m3u .vsf .nib .nbz|
|Commodore<br/>C128|**vice_x128**|c128|.d(64, 71, 80, 81, 82, 6z, 7z, 8z) .g(64, 41, 6z, 4z) .x64 .t64 .tap .prg .p00 .crt .bin .x6z .cmd .m3u .vsf .nib .nbz|
|Commodore<br/>VIC-20|**vice_xvic**|vic20|.20 .40 .60 .a0 .b0 .d(64, 71, 80, 81, 82, 6z, 7z, 8z) .g(64, 41, 6z, 4z) .x64 .t64 .tap .prg .p00 .crt .bin .gz .x6z .cmd .m3u .vsf .nib .nbz|
|Fairchild<br/>Channel F|**fairchaf**|channelf|.bin .chf .zip .7z|
|GCE<br/>Vectrex|**vecx**|vectrex|.bin .gam .vec .zip .7z|
|Mattel<br/>Intellivision|**freeintv**|intellivision|.int .bin .rom .zip .7z|
|[Microsoft<br />MS-DOS](System-MS-DOS)|**dosbox_pure**<br />dosbox_svn|pc|.com .bat .exe .dosz, disk images (iso, cue, img, ima, vhd) can be put into the .dosz|
|Microsoft<br/>MSX|**bluemsx**<br />fmsx|msx| .dsk .mx1 .mx2 .rom .zip .7z .m3u|
|Microsoft<br/>MSX2|**bluemsx**<br />fmsx|msx2|.dsk .mx1 .mx2 .rom .zip .7z .m3u|
|[NEC<br/>PC-88](System-PC-88)|**quasi88**|pc88|.d88 .m3u|
|[NEC<br/>PC-98](System-PC-98)|**np2kai**<br />nekop2|pc98|.d98 .zip .98d .fdi .fdd .2hd .tfd .d88 .88d .hdm .xdf .dup .hdi .thd .nhd .hdd .hdn|
|NEC<br/>PC Engine|**beetle_pce_fast**<br />beetle_supergrafx|pcengine|.pce .bin .zip .7z|
|NEC<br/>PC Engine CD|**beetle_pce_fast**<br />beetle_supergrafx|pcenginecd|.cue .ccd .chd .toc .m3u|
|NEC<br/>SuperGrafx|**beetle_supergrafx**|sgfx|.pce .sgx .cue .ccd .chd .zip .7z|
|NEC<br/>TurboGrafx-16|**beetle_pce_fast**<br />beetle_supergrafx|tg16|.pce .bin .zip .7z|
|NEC<br/>TurboGrafx CD|**beetle_pce_fast**<br />beetle_supergrafx|tg16cd|.cue .ccd .chd .toc .m3u|
|Nintendo<br />NES|**nestopia**<br />fceumm<br />quicknes|nes|.nes .unif .unf .zip .7z|
|Nintendo<br/>Famicom|**nestopia**<br />fceumm<br />quicknes|famicom|.nes .unif .unf .zip .7z|
|Nintendo<br/>Famicom Disk System|**nestopia**<br />fceumm<br />quicknes|fds|.fds .zip .7z|
|Nintendo<br/>Game Boy|**gambatte**<br />sameboy<br />gearboy<br />tgbdual<br />mgba<br />vbam|gb|.gb .gbc .zip .7z|
|[Nintendo<br/>Game Boy Advance](System-Game-Boy-Advance)|**mgba**<br />beetle_gba<br />gpsp<br />vbam<br />vba_next|gba|.gba .zip .7z|
|Nintendo<br/>Game Boy Color|**gambatte**<br />sameboy<br />gearboy<br />tgbdual<br />mgba<br />vbam|gbc|.gbc .gb .zip .7z|
|Nintendo<br/>Game & Watch|**gw**|gameandwatch|.mgw .zip .7z|
|Nintendo<br/>Pokémon Mini|**pokemini**|pokemini|.min .zip .7z|
|[Nintendo<br/>Super NES](System-Super-Nintendo-Entertainment-System)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />beetle_supafaust|snes|.smc .sfc .swc .fig .zip .7z|
|[Nintendo<br/>Super Famicom](System-Super-Nintendo-Entertainment-System)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />beetle_supafaust|sfc|.smc .sfc .swc .fig .zip .7z|
|[Nintendo<br/>Super NES MSU-1](System-Super-Nintendo-Entertainment-System)|**snes9x**<br />beetle_supafaust|snesmsu1|.smc .fig .sfc .swc .zip .7z|
|[Nintendo<br/>Satellaview](System-Super-Nintendo-Entertainment-System#satellaview-bs-x)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010|satellaview|.smc .sfc .swc .fig .bs .bsx .zip .7z|
|[Nintendo<br/>Virtual Boy](System-Virtual-Boy)|**beetle_vb**|virtualboy|.vb .zip .7z|
|[Magnavox<br/>Odyssey²](System-Magnavox-Odyssey2)|**o2em**|odyssey|.bin .zip .7z|
|[Philips<br/>Videopac](System-Magnavox-Odyssey2)|**o2em**|videopac|.bin .zip .7z|
|[Philips<br/>CD-i](System-CDI)|**same_cdi**|cdi|.chd .iso|
|[Sony<br/>PlayStation](System-Sony-PlayStation)|**pcsx_rearmed**<br />duckstation<br />swanstation|psx|.bin .cue .img .pbp .mdf .toc .cbn .m3u .ccd .chd .iso|
|Sega 32X|**picodrive**|sega32x|.32x .bin .md .smd .zip .7z|
|Sega CD|**genesis_plus_gx**<br />picodrive|segacd|.chd .cue .iso .m3u|
|Sega<br/>SG-1000|**gearsystem**<br />genesis_plus_gx<br />picodrive|sg-1000|.bin .sg .zip .7z|
|Sega<br/>SC-3000|**bluemsx**|sc-3000|.sg .bin .zip .7z|
|Sega<br/>Game Gear|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|gamegear|.gg .bin .zip .7z|
|Sega<br/>Genesis|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|genesis|.gen .md .sg .smd .bin .zip .7z|
|Sega<br/>Master System|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|mastersystem|.sms .bin .zip .7z|
|Sega<br/>Mega-CD|**genesis_plus_gx**<br />picodrive|megacd|.chd .cue .iso .m3u|
|Sega<br/>Mega Drive|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|megadrive<br />megadrive-japan|.gen .bin .md .sg .smd .zip .7z|
|Sega<br/>Saturn|**yabasanshiroSA**|saturn|.cue .iso .chd|
|Sharp<br/>X1|**x1**|x1|.dx1 .2d .2hd .tfd .d88 .88d .hdm .xdf .dup .tap .cmd .zip .7z|
|[Sharp<br/>x68000](System-X68000)|**px68k**|x68000|.dim .img .d88 .88d .hdm .dup .2hd .xdf .hdf .cmd .m3u .zip .7z|
|Sinclair<br/>ZX81|**81**|zx81|.tzx .p .zip .7z|
|Sinclair<br/>ZX Spectrum|**fuse**|zxspectrum|.tzx .tap .z80 .rzx .scl .trd .dsk .zip .7z|
|SNK<br/>Neo Geo|**fbneo**<br />mame2003_plus<br />fbalpha2012<br />fbalpha2019<br />mame2010<br />mame2015<br />mame|neogeo|.7z .zip|
|SNK<br/>Neo Geo CD|**neocd**<br />fbneo|neocd|.chd .cue .iso|
|SNK<br/>Neo Geo Pocket|**beetle_ngp**<br />race|ngp|.ngp .ngc .zip .7z|
|SNK<br/>Neo Geo Pocket Color|**beetle_ngp**<br />race|ngpc|.ngc .zip .7z|
|Watara<br/>Supervision|**potator**|supervision|.sv .zip .7z|
|Welback Holdings<br/>Mega Duck|**sameduck**|megaduck|.bin .zip .7z|

## Fantasy-/Open Source Consoles

|System|Core/Emu|ROM Path|Extension| 
|---|---|---|---|---|
|[Arduboy](System-Arduboy)|**arduous**|arduboy|.hex|
|Belogic<br/>Uzebox|**uzem**|uzebox|.uze|
|[Lexaloffle<br/>Pico-8](System-PICO-8)|**pico8**|pico-8|.png .p8|
|Nesbox<br/>TIC-80|**tic80**|tic-80|.tic|


## Arcade

|Manufacturer/System&#x2800;&#x2800;&#x2800;&#x2800;&#x2800;|Core/Emu|ROM Path|Extension| 
|---|---|---|---|---|
|[Arcade](Arcade)|**mame2003_plus**<br />mame2000<br />mame2010<br />mame2015<br />mame<br />fbneo<br />fbalpha2012<br />fbalpha2019<br />AdvanceMame|arcade|.zip .7z|
|[MAME](System-MAME)|**mame2003_plus**<br />AdvanceMame<br />mame2000<br />mame2010<br />mame2015<br />mame<br />fbneo<br />fbalpha2012<br />fbalpha2019|mame|.zip .7z|
|[FinalBurn Neo](System-FBNeo)|**fbneo**<br />mame2003_plus<br />fbalpha2012<br />fbalpha2019<br />mame2010<br />mame2015<br />mame|fbneo|.zip .7z|
|[LaserDisc](System-Laserdisc)|**hypseus-singe**|laserdisc|.daphne or .ld (folder extension)|
|[Sammy<br/>Atomiswave](System-Atomiswave)|**flycast**|atomiswave|.lst .bin .dat .zip .7z|

Please Note that MAME and FBA screen ratio are not optimized as they should have been optimized on game basis (some are 4:3, some alre 3:2 some are vertical), so we decided to leave the default options.

## Low Performance Systems
These platforms, due to hardware limitation, are included and worked on, but will never work perfectly.
Some games/systems work almost perfectly, some others they may never work smoothly.

|System|Status|Core/Emu|ROM Path|Extension| 
|---|---|---|---|---|
|3DO|Only low performance|**opera**|3do|.iso .cue .bin .chd|
|J2ME|Quite smooth playing|**freej2me**|j2me|.jar|
|NEC<br />PC-FX|Only low performance|**beetle_pcfx**|pcfx|.chd .cue .ccd .toc|
|[NINTENDO N64](System-N64)|Some games run well, others are unplayable|mupen64plus<br />mupen64plus_next<br />**parallel_n64**<br />parallel_n64_gln64<br />mupen64plussa_glide64mk2<br />mupen64plussa_rice|n64|.z64 .n64 .v64 .zip .7z|
|NINTENDO DS|2D Games almost fully playable|**drastic**|nds|.nds .zip|
|[SEGA<br />NAOMI](System-Naomi)|Some games run well, others are unplayable|**flycast**|naomi|.lst .bin .dat .zip .7z|
|SEGA DREAMCAST|Some games run well, others are unplayable|**flycast**|dreamcast|.cdi .gdi .chd .m3u|
|[SONY PSP](System-Sony-PlayStation-Portable)|Many games run well, especially with frameskip. Some games are unplayable |**PPSSPPSDL**<br />ppsspp|psp|.cso .iso .pbp|
|[SONY<br />PSP MINIS](System-Sony-PlayStation-Portable)|Most games are less demanding than PSP, and run well, though a few may run badly|**PPSSPPSDL**<br />ppsspp| pspminis |.iso .cso .pbp|

\*Games can also run internally from the gamedata/ppsspp/psp/GAMEDATA folder, this also allows DLC and custom textures to be added.

## Game Engines

|System|Core/Emu|ROM Path|Extension| 
|---|---|---|---|
|[Build Engine](System-Build-Engine)|**raze**|build|[.build](System-Build-Engine#how-to-create-a-build-file)|
|[DOOM](System-Doom)|**gzdoom**<br />lzdoom<br />prboom|doom|[.doom](System-Doom#how-to-create-a-doom-file)|
|[EASYRPG](System-EasyRPG)|**easyrpg**|easyrpg|.zip .easyrpg .ldb|
|OPENBOR|**openbor**|openbor|.pak|
|[SCUMMVM](System-ScummVM)|**scummvmsa**<br />scummvm|scummvm|.scummvm|
|SOLARUS|**solarus**|solarus|.solarus|
|[WOLFENSTEIN 3D](System-Wolfenstein-3D)|**ecwolf**|ecwolf|[.ecwolf](System-Wolfenstein-3D#how-to-create-a-ecwolf-file)|

## Homebrew

|Port|Core/Emu|ROM Path|Extension| 
|---|---|---|---|
|HYDRA CASTLE LABYRINTH|hcl|
|PRINCE OF PERSIA|SDLPoP|
|TYRIAN|OpenTyrian|

## Collections

|Platform|Core/Emu|ROM Path|Extensions|
|---|---|---|---|
|NINTENDO<br />GAME BOY HACKS|**gambatte**<br />sameboy<br />mgba<br />tgbdual<br />gearboy<br />vbam|gbh|.gb .zip .7z|
|NINTENDO<br />GAME BOY COLOR HACKS|**gambatte**<br />sameboy<br />mgba<br />tgbdual<br />gearboy<br />vbam|gbch|.gbc .gb .zip .7z|
|NINTENDO<br />GAME BOY ADVANCE HACKS|**mgba**<br />gpsp<br />vbam<br />vba_next<br />beetle_gba|gbah|.gba .zip .7z|
|NINTENDO<br />ENTARTAINMENT SYSTEM HACKS|**nestopia**<br />fceumm<br />quicknes|nesh|.nes .unif .unf .zip .7z|
|NINTENDO<br />SUPER NINTENDO HACKS|**snes9x**<br />snes9x2010<br />snes9x2002<br />snes9x2005_plus<br />beetle_supafaust|snesh|.smc .sfc .swc .fig .zip .7z|
|SEGA<br />GAME GEAR HACKS|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|gamegearh|.gg .bin .zip .7z|
|SEGA<br />GENESIS HACKS|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|genh|.gen .md .sg .smd .bin .zip .7z|

# BIOS 
Some platforms need bios files, these should go in /storage/roms/bios.
You can check which bios you’re missing directly on your device by pressing START, Games Settings, Missing Bios.

## What Doesn't Run
* SONY PLAYSTATION 2
* SONY PLAYSTATION 3
* SONY PLAYSTATION 4
* NINTENDO GAMECUBE
* NINTENDO 3DS
* NINTENDO WII/U
* MICROSOFT XBOX (any)
* ATARI JAGUAR
* ANYTHING NEWER
