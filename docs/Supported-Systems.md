# Supported Systems

This is a list of supported systems and the emulators/cores to run them, it will be updated regularly.
This page represents the state of the current development branch, some systems/emulators/cores may be available only in a future release.

Note that because of lack of time, not all of these systems have been thoroughly tested, help is always appreciated if you want to test them and report back!

Every system needs to have the correct folder structure inside the base path (the base ROM path is `/storage/roms`), for example Super NES needs ROMs inside `/storage/roms/snes`.
This path is actually a second partition on your SD card, for more information on how to add your games please refer to this article: [Adding Games](Getting-to-Know-351ELEC#adding-games)

You will also find the correct extensions, almost all cores support .zip and .7z files as well as those listed.

The **bold** one is the default core/emulator.

- [Arcade](#arcade)
- [Consoles/Portables](#consolesportables)
- [Computers](#computers)
- [Fantasy/Open Source Consoles](#fantasyopen-source-consoles)
- [Game Engines](#game-engines)
- [BIOS](#bios)

## Arcade

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Arcade](Arcade)|**mame2003_plus**<br />mame2000<br />mame2010<br />mame2015<br />mame<br />fbneo<br />fbalpha2012<br />fbalpha2019<br />AdvanceMame|arcade|.zip .7z|||
|[MAME](System-MAME)|**mame2003_plus**<br />AdvanceMame<br />mame2000<br />mame2010<br />mame2015<br />mame<br />fbneo<br />fbalpha2012<br />fbalpha2019|mame|.zip .7z|Good: MAME2003-plus works well, other romsets are mixed|Good|
|[FinalBurn Neo](System-FBNeo)|**fbneo**<br />mame2003_plus<br />fbalpha2012<br />fbalpha2019<br />mame2010<br />mame2015<br />mame|fbneo|.zip .7z|Good|Good|
|[LaserDisc](System-Laserdisc)|**hypseus-singe**|laserdisc|.daphne or .ld (folder extension)|Good|Good|
|[Sammy<br/>Atomiswave](System-Atomiswave)|**flycast**|atomiswave|.lst .bin .dat .zip .7z|Good|Good|
|[Sega<br />Naomi](System-Naomi)|**flycast**|naomi|.lst .bin .dat .zip .7z|Mixed: Some games run well, others are unplayable|Mixed: Some games run well, others are unplayable|

Please note that MAME and FinalBurn Neo screen aspect ratios are not optimized, as they should have been optimized on game basis (some are 4:3, some are 3:2 and some are vertical), so we decided to leave the default options.

## Consoles/Portables

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|Atari<br/>2600|**stella-2014**<br />stella|atari2600|.a26 .bin .zip .7z|Good|Good|
|Atari<br/>5200|**a5200**<br />atari800|atari5200|.rom .xfd .atr .atx .cdm .cas .car .bin .a52 .xex .zip .7z|Good|Good|
|Atari<br/>7800|**prosystem**|atari7800|.a78 .bin .zip .7z|Good|Good|
|Atari<br/>Lynx|**handy**<br />beetle_lynx|atarilynx|.lnx .o .zip .7z|Good|Good|
|[Bandai<br/>SuFami Turbo](System-Super-Nintendo-Entertainment-System#sufami-turbo)|**snes9x**|sufami|.st .zip .7z|Good|Good|
|[Bandai<br/>Wonderswan](System-Bandai-Wonderswan)|**beetle_wswan**|wonderswan|.ws .zip .7z|Good|Good|
|[Bandai<br/>Wonderswan Color](System-Bandai-Wonderswan)|**beetle_wswan**|wonderswancolor|.wsc .zip .7z|Good|Good|
|Coleco<br/>ColecoVision|**bluemsx**<br />gearcoleco<br />smsplus|coleco|.bin .col .rom .zip .7z|Good|Good|
|Commodore<br/>Amiga CD³²|**puae**<br />uae4arm|amigacd32|.iso .cue .chd .lha|Good|Good|
|Fairchild<br/>Channel F|**fairchaf**|channelf|.bin .chf .zip .7z|Good|Good|
|General Consumer Electric<br/>Vectrex|**vecx**|vectrex|.bin .gam .vec .zip .7z|Good|Good|
|Mattel<br/>Intellivision|**freeintv**|intellivision|.int .bin .rom .zip .7z|Good|Good|
|NEC<br/>PC Engine|**beetle_pce_fast**<br />beetle_supergrafx|pcengine|.pce .bin .zip .7z|Good|Good|
|NEC<br/>PC Engine CD|**beetle_pce_fast**<br />beetle_supergrafx|pcenginecd|.cue .ccd .chd .toc .m3u|Good|Good|
|NEC<br />PC-FX|**beetle_pcfx**|pcfx|.chd .cue .ccd .toc|Bad: Only low performance|Bad: Only low performance|
|NEC<br/>SuperGrafx|**beetle_supergrafx**|sgfx|.pce .sgx .cue .ccd .chd .zip .7z|Good|Good|
|NEC<br/>TurboGrafx 16|**beetle_pce_fast**<br />beetle_supergrafx|tg16|.pce .bin .zip .7z|Good|Good|
|NEC<br/>TurboGrafx CD|**beetle_pce_fast**<br />beetle_supergrafx|tg16cd|.cue .ccd .chd .toc .m3u|Good|Good|
|Nintendo<br/>Famicom|**nestopia**<br />fceumm<br />quicknes|famicom|.nes .unif .unf .zip .7z|Good|Good|
|Nintendo<br/>Famicom Disk System|**nestopia**<br />fceumm<br />quicknes|fds|.fds .zip .7z|Good|Good|
|Nintendo<br/>Game & Watch|**gw**|gameandwatch|.mgw .zip .7z|Good|Good|
|Nintendo<br/>Game Boy|**gambatte**<br />sameboy<br />gearboy<br />tgbdual<br />mgba<br />vbam|gb<br/>gbh (hacks)|.gb .gbc .zip .7z|Good|Good|
|[Nintendo<br/>Game Boy Advance](System-Game-Boy-Advance)|**mgba**<br />beetle_gba<br />gpsp<br />vbam<br />vba_next|gba<br/>gbah (hacks)|.gba .zip .7z|Good|Good|
|Nintendo<br/>Game Boy Color|**gambatte**<br />sameboy<br />gearboy<br />tgbdual<br />mgba<br />vbam|gbc<br/>gbch (hacks)|.gbc .gb .zip .7z|Good|Good|
|[Nintendo<br />N64](System-N64)|mupen64plus<br />mupen64plus_next<br />**parallel_n64**<br />parallel_n64_gln64<br />mupen64plussa_glide64mk2<br />mupen64plussa_rice|n64|.z64 .n64 .v64 .zip .7z|Mixed: Some games run well, others are unplayable|Mixed: Some games run well, others are unplayable|
|Nintendo<br />NDS|**drastic**|nds|.nds .zip|Mixed: 2D Games almost fully playable|Mixed: 2D Games almost fully playable|
|Nintendo<br />NES|**nestopia**<br />fceumm<br />quicknes|nes<br/>nesh (hacks)|.nes .unif .unf .zip .7z|Good|Good|
|Nintendo<br/>Pokémon Mini|**pokemini**|pokemini|.min .zip .7z|Good|Good|
|[Nintendo<br/>Super NES](System-Super-Nintendo-Entertainment-System)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />beetle_supafaust|snes<br/>snesh (hacks)|.smc .sfc .swc .fig .zip .7z|Good|Good|
|[Nintendo<br/>Super Famicom](System-Super-Nintendo-Entertainment-System)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />beetle_supafaust|sfc|.smc .sfc .swc .fig .zip .7z|Good|Good|
|[Nintendo<br/>Super NES MSU-1](System-Super-Nintendo-Entertainment-System)|**snes9x**<br />beetle_supafaust|snesmsu1|.smc .fig .sfc .swc .zip .7z|Good|Good|
|[Nintendo<br/>Satellaview](System-Super-Nintendo-Entertainment-System#satellaview-bs-x)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010|satellaview|.smc .sfc .swc .fig .bs .bsx .zip .7z|Good|Good|
|[Nintendo<br/>Virtual Boy](System-Virtual-Boy)|**beetle_vb**|virtualboy|.vb .zip .7z|Good|Good|
|Panasonic<br />3DO|**opera**|3do|.iso .cue .bin .chd|Bad: Only low performance|Bad: Only low performance|
|[Philips<br/>CD-i](System-CDI)|**same_cdi**|cdi|.chd .iso|Good|Good|
|Sega 32X|**picodrive**|sega32x|.32x .bin .md .smd .zip .7z|Good|Good|
|Sega CD|**genesis_plus_gx**<br />picodrive|segacd|.chd .cue .iso .m3u|Good|Good|
|Sega<br/>SG-1000|**gearsystem**<br />genesis_plus_gx<br />picodrive|sg-1000|.bin .sg .zip .7z|Good|Good|
|Sega<br/>Game Gear|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|gamegear<br/>gamegearh (hacks)|.gg .bin .zip .7z|Good|Good|
|Sega<br/>Genesis|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|genesis<br/>genh (hacks)|.gen .md .sg .smd .bin .zip .7z|Good|Good|
|Sega<br/>Master System|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|mastersystem|.sms .bin .zip .7z|Good|Good|
|Sega<br/>Mega-CD|**genesis_plus_gx**<br />picodrive|megacd|.chd .cue .iso .m3u|Good|Good|
|Sega<br/>Mega Drive|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|megadrive<br />megadrive-japan|.gen .bin .md .sg .smd .zip .7z|Good|Good|
|Sega<br/>Saturn|**yabasanshiroSA**|saturn|.cue .iso .chd|Mixed: Almost any game is fully playable, but not at full speed|Good|
|Sega<br />Dreamcast|**flycast**|dreamcast|.cdi .gdi .chd .m3u|Mixed: Some games run well, others are unplayable|Mixed: Some games run well, others are unplayable|
|SNK<br/>Neo Geo|**fbneo**<br />mame2003_plus<br />fbalpha2012<br />fbalpha2019<br />mame2010<br />mame2015<br />mame|neogeo|.7z .zip|Good|Good|
|SNK<br/>Neo Geo CD|**neocd**<br />fbneo|neocd|.chd .cue .iso|Good|Good|
|SNK<br/>Neo Geo Pocket|**beetle_ngp**<br />race|ngp|.ngp .ngc .zip .7z|Good|Good|
|SNK<br/>Neo Geo Pocket Color|**beetle_ngp**<br />race|ngpc|.ngc .zip .7z|Good|Good|
|[Sony<br/>PlayStation](System-Sony-PlayStation)|**pcsx_rearmed**<br />duckstation<br />swanstation|psx|.bin .cue .img .pbp .mdf .toc .cbn .m3u .ccd .chd .iso|Good|Good|
|[Sony<br />PlayStation Portable](System-Sony-PlayStation-Portable)|**PPSSPPSDL**<br />ppsspp|psp|.cso .pbp .iso|Mixed: Many games run well, especially with frameskip. Some games are unplayable|Mixed: Many games run well, especially with frameskip. Some games are unplayable|
|[Sony<br />PSP Minis](System-Sony-PlayStation-Portable)|**PPSSPPSDL**<br />ppsspp| pspminis |.cso .pbp .iso|Mixed: Most games are less demanding than PSP, and run well, though a few may run badly|Mixed: Most games are less demanding than PSP, and run well, though a few may run badly|
|Sun Microsystems<br/>J2ME|**freej2me**|j2me|.jar|Good: Quite smooth playing|Good: Quite smooth playing|
|Watara<br/>Supervision|**potator**|supervision|.sv .zip .7z|Good|Good|
|Welback Holdings<br/>Mega Duck|**sameduck**|megaduck|.bin .zip .7z|Good|Good|

## Computers

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Amstrad<br/>CPC](System-Amstrad-CPC)|**crocods**<br />cap32|amstradcpc|.dsk .sna [crocods: .kcr]<br/>[cap32: .tap .cdt .voc .m3u .zip .7z]|Good|Good|
|Atari 800|**atari800**|atari800|.rom .xfd .atr .atx .cdm .cas .car .bin .a52 .xex .zip .7z|Good|Good|
|[Atari ST](System-Atari-ST)|**hatari**<br />HATARISA|atarist|.st .msa .stx .dim .ipf .m3u .zip .7z|Good|Good|
|Commodore<br/>Amiga|**puae**<br />amiberry<br />uae4arm|amiga|.zip .uae .adf .dms .fdi .ipf .adz .lha .hdf .hdz|Good|Good|
|Commodore<br/>C16|**vice_xplus4**|c16|.d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|Commodore<br/>C64|**vice_x64**|c64|.d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|Commodore<br/>C128|**vice_x128**|c128|.d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|Commodore<br/>VIC-20|**vice_xvic**|vic20|.20 .40 .60 .a0 .b0 .d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .gz .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|[Magnavox<br/>Odyssey²](System-Magnavox-Odyssey2)|**o2em**|odyssey|.bin .zip .7z|Good|Good|
|[Microsoft<br />DOS](System-MS-DOS)|**dosbox_pure**<br />dosbox_svn|pc|.com .bat .exe .dosz, disk images (iso, cue, img, ima, vhd) can be put into the .dosz|Good|Good|
|Microsoft<br/>MSX|**bluemsx**<br />fmsx|msx| .dsk .mx1 .mx2 .rom .zip .7z .m3u|Good|Good|
|Microsoft<br/>MSX2|**bluemsx**<br />fmsx|msx2|.dsk .mx1 .mx2 .rom .zip .7z .m3u|Good|Good|
|[NEC<br/>PC-88](System-PC-88)|**quasi88**|pc88|.d88 .m3u|Good|Good|
|[NEC<br/>PC-98](System-PC-98)|**np2kai**<br />nekop2|pc98|.d98 .zip .98d .fdi .fdd .2hd .tfd .d88 .88d .hdm .xdf .dup .hdi .thd .nhd .hdd .hdn|Mixed: Not powerful enough for some games|Good|
|[Philips<br/>Videopac](System-Magnavox-Odyssey2)|**o2em**|videopac|.bin .zip .7z|Good|Good|
|Sega<br/>SC-3000|**bluemsx**|sc-3000|.sg .bin .zip .7z|Good|Good|
|Sharp<br/>X1|**x1**|x1|.dx1 .2d .2hd .tfd .d88 .88d .hdm .xdf .dup .tap .cmd .zip .7z|Good|Good|
|[Sharp<br/>x68000](System-X68000)|**px68k**|x68000|.dim .img .d88 .88d .hdm .dup .2hd .xdf .hdf .cmd .m3u .zip .7z|Good|Good|
|Sinclair<br/>ZX81|**81**|zx81|.tzx .p .zip .7z|Good|Good|
|Sinclair<br/>ZX Spectrum|**fuse**|zxspectrum|.tzx .tap .z80 .rzx .scl .trd .dsk .zip .7z|Good|Good|

## Fantasy/Open Source Consoles

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Aquaplus<br/>P/ECE](System-Aquaplus-Piece)|**piemu**|piece|.pex .pfi|Good|Good|
|[Arduboy](System-Arduboy)|**arduous**|arduboy|.hex|Good|Good|
|Belogic<br/>Uzebox|**uzem**|uzebox|.uze|Good|Good|
|[Lexaloffle<br/>Pico-8](System-PICO-8)|**pico8**|pico-8|.png .p8|Good|Good|
|Nesbox<br/>TIC-80|**tic80**|tic-80|.tic|Good|Good|

## Game Engines

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Build Engine](System-Build-Engine)|**raze**|build|[.build](System-Build-Engine#how-to-create-a-build-file)|||
|[Doom](System-Doom)|**gzdoom**<br />lzdoom<br />prboom|doom|[.doom](System-Doom#how-to-create-a-doom-file)|||
|[EasyRPG](System-EasyRPG)|**easyrpg**|easyrpg|.zip .easyrpg .ldb|||
|OpenBOR|**openbor**|openbor|.pak|||
|[ScummVM](System-ScummVM)|**scummvmsa**<br />scummvm|scummvm|.scummvm|||
|Solarus|**solarus**|solarus|.solarus|||
|[Wolfenstein 3D](System-Wolfenstein-3D)|**ecwolf**|ecwolf|[.ecwolf](System-Wolfenstein-3D#how-to-create-a-ecwolf-file)|||

# BIOS 
Some platforms need bios files, these should go in /storage/roms/bios.
You can check which bios you’re missing directly on your device by pressing START, Games Settings, Missing Bios.
