# Supported Systems

This is a list of supported systems and the emulators/cores to run them, it will be updated regularly.
This page represents the state of the current development branch, some systems/emulators/cores may be available only in a future release.

Note that because of lack of time, not all of these systems have been thoroughly tested, help is always appreciated if you want to test them and report back!

Every system needs to have the correct folder structure inside the base path (the base ROM path is `/storage/roms`), for example Super NES needs ROMs inside `/storage/roms/snes`.
This path is actually a second partition on your SD card, for more information on how to add your games please refer to this article: [Adding Games](/guides/getting-to-know-amberelec#adding-games)

You will also find the correct extensions, almost all cores support .zip and .7z files as well as those listed.

The **bold** one is the default core/emulator. Cores that are *light purple*{: .rg552only } are only available on the RG552.

- [Arcade](#arcade)
- [Consoles/Portables](#consolesportables)
- [Computers](#computers)
- [Fantasy/Open Source Consoles](#fantasyopen-source-consoles)
- [Game Engines](#game-engines)
- [BIOS](#bios)

## Arcade

Arcade emulation is complicated! Please see the [Arcade Emulation Overview](/guides/arcade) for help getting started

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[MAME](mame)|**mame2003_plus**<br />AdvanceMame<br />mame2000<br />mame2010<br />mame2015<br />mame2016<br />mame<br />fbneo<br />fbalpha2012<br />fbalpha2019|mame<br />arcade|.zip .7z|Good: MAME2003-plus works well, other romsets are mixed|Good|
|[FinalBurn Neo](fbneo)|**fbneo**<br />mame2003_plus<br />fbalpha2012<br />fbalpha2019<br />mame2010<br />mame2015<br />mame2016<br />mame|fbneo|.zip .7z|Good|Good|
|[LaserDisc](laserdisc)|**hypseus-singe**|laserdisc|.daphne or .ld (folder extension)|Good|Good|
|[Sammy<br/>Atomiswave](sammy-atomiswave)|**flycast**<br />flycast2021|atomiswave|.lst .bin .dat .zip .7z|Good|Good|
|[Sega<br/>Naomi](sega-naomi)|**flycast**<br />flycast2021|naomi|.lst .bin .dat .zip .7z|Mixed: Some games run well, others are unplayable|Mixed: Some games run well, others are unplayable|

Please note that MAME and FinalBurn Neo screen aspect ratios are not optimized, as they should have been optimized on game basis (some are 4:3, some are 3:2 and some are vertical), so we decided to leave the default options.

## Consoles/Portables

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Atari<br/>2600](atari-2600)|**stella-2014**<br />stella|atari2600|.a26 .bin .zip .7z|Good|Good|
|[Atari<br/>5200](atari-5200)|**a5200**<br />atari800|atari5200|.rom .xfd .atr .atx .cdm .cas .car .bin .a52 .xex .zip .7z|Good|Good|
|[Atari<br/>7800](atari-7800)|**prosystem**<br />mame|atari7800|.a78 .bin .zip .7z|Good|Good|
|[Atari<br/>Jaguar](atari-jaguar)|**virtualjaguar**|atarijaguar|.j64 .jag|Bad|Mixed|
|[Atari<br/>Lynx](atari-lynx)|**handy**<br />beetle_lynx|atarilynx|.lnx .o .zip .7z|Good|Good|
|[Bandai<br/>SuFami Turbo](nintendo-sfc#sufami-turbo)|**snes9x**|sufami|.st .zip .7z|Good|Good|
|[Bandai<br/>Wonderswan](bandai-wonderswan)|**beetle_wswan**|wonderswan|.ws .zip .7z|Good|Good|
|[Bandai<br/>Wonderswan Color](bandai-wonderswan)|**beetle_wswan**|wonderswancolor|.wsc .zip .7z|Good|Good|
|[Bit Corp<br />Gamate](bit-corp-gamate)|**mame**|gamate|.bin .zip .7z|Good|Good|
|[Casio<br />PV-1000](casio-pv-1000)|**mame**|pv1000|.bin .zip .7z|Good|Good|
|[Coleco<br/>ColecoVision](coleco-colecovision)|**bluemsx**<br />gearcoleco<br />smsplus|coleco|.bin .col .rom .zip .7z|Good|Good|
|[Commodore<br/>Amiga CD³²](commodore-amiga-cd32)|**puae2021**<br />puae<br />uae4arm|amigacd32|.iso .cue .chd .lha|Good|Good|
|[Entex<br />Adventure Vision](entex-adventure-vision)|**mame**|advision|.bin .zip .7z|Good|Good|
|[Epoch<br />Game Pocket Computer](epoch-game-pocket-computer)|**mame**|gamepocketcomputer|.bin .zip .7z|Good|Good|
|Epoch<br />Super Cassette Vision|**emuscv**|scv|.bin .rom .0 .zip .7z|Good|Good|
|[Fairchild<br/>Channel F](fairchild-channel-f)|**fairchaf**|channelf|.bin .chf .zip .7z|Good|Good|
|[Hartung<br />Game Master](hartung-game-master)|**mame**|gamemaster|.bin .zip .7z|Good|Good|
|[Magnavox<br/>Odyssey²](magnavox-odyssey2)|**o2em**|odyssey|.bin .zip .7z|Good|Good|
|[Mattel<br/>Intellivision](mattel-intellivision)|**freeintv**|intellivision|.int .bin .rom .zip .7z|Good|Good|
|[Milton Bradley<br/>Vectrex](milton-bradley-vectrex)|**vecx**|vectrex|.bin .gam .vec .zip .7z|Good|Good|
|[NEC<br/>PC Engine](nec-pc-engine)|**beetle_pce_fast**<br />beetle_pce<br />beetle_supergrafx|pcengine|.pce .bin .zip .7z|Good|Good|
|[NEC<br/>PC Engine CD](nec-pc-engine#cd-addon-overview)|**beetle_pce_fast**<br />beetle_pce<br />beetle_supergrafx|pcenginecd|.cue .ccd .chd .toc .m3u|Good|Good|
|[NEC<br/>PC-FX](nec-pc-fx)|**beetle_pcfx**|pcfx|.chd .cue .ccd .toc|Bad: Only low performance|Bad: Only low performance|
|[NEC<br/>SuperGrafx](nec-pc-engine#supergrafx-overview)|**beetle_supergrafx**<br />beetle_pce|sgfx|.pce .sgx .cue .ccd .chd .zip .7z|Good|Good|
|[NEC<br/>TurboGrafx 16](nec-pc-engine)|**beetle_pce_fast**<br />beetle_pce<br />beetle_supergrafx|tg16|.pce .bin .zip .7z|Good|Good|
|[NEC<br/>TurboGrafx CD](nec-pc-engine#cd-addon-overview)|**beetle_pce_fast**<br />beetle_pce<br />beetle_supergrafx|tg16cd|.cue .ccd .chd .toc .m3u|Good|Good|
|[Nintendo<br/>Famicom](nintendo-famicom)|**nestopia**<br />fceumm<br />quicknes<br />*mesen*{: .rg552only }|famicom|.nes .unif .unf .zip .7z|Good|Good|
|[Nintendo<br/>Famicom Disk System](nintendo-famicom#famicom-disk-system-fds-overview)|**nestopia**<br />fceumm<br />quicknes<br />*mesen*{: .rg552only }|fds|.fds .zip .7z|Good|Good|
|[Nintendo<br/>Game & Watch](nintendo-game-and-watch)|**gw**|gameandwatch|.mgw .zip .7z|Good|Good|
|[Nintendo<br/>Game Boy](nintendo-gb)|**gambatte**<br />sameboy<br />gearboy<br />tgbdual<br />mgba<br />vbam<br />*bsnes*{: .rg552only }<br />*mesen-s*{: .rg552only }|gb<br/>gbh (hacks)|.gb .gbc .zip .7z|Good|Good|
|[Nintendo<br/>Game Boy Advance](nintendo-gba)|**mgba**<br />beetle_gba<br />gpsp<br />vbam<br />vba_next|gba<br/>gbah (hacks)|.gba .zip .7z|Good|Good|
|[Nintendo<br/>Game Boy Color](nintendo-gb#gbc-overview)|**gambatte**<br />sameboy<br />gearboy<br />tgbdual<br />mgba<br />vbam<br />*bsnes*{: .rg552only }<br />*mesen-s*{: .rg552only }|gbc<br/>gbch (hacks)|.gbc .gb .zip .7z|Good|Good|
|[Nintendo<br/>N64](nintendo-n64)|mupen64plus_next<br />parallel_n64<br />mupen64plussa_glide64mk2<br />**mupen64plussa_rice**|n64|.z64 .n64 .v64 .zip .7z|Mixed: Some games run well, others are unplayable|Mixed: Some games run well, others are unplayable|
|[Nintendo<br/>NDS](nintendo-nds)|**drastic**|nds|.nds .zip|Mixed: 2D Games almost fully playable|Mixed: 2D Games almost fully playable|
|[Nintendo<br/>NES](nintendo-famicom)|**nestopia**<br />fceumm<br />quicknes<br />*mesen*{: .rg552only }|nes<br/>nesh (hacks)|.nes .unif .unf .zip .7z|Good|Good|
|[Nintendo<br/>Pokémon Mini](nintendo-pokemon-mini)|**pokemini**|pokemini|.min .zip .7z|Good|Good|
|[Nintendo<br/>Satellaview](nintendo-sfc#satellaview-bs-x)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />*beetle_snes*{: .rg552only }<br />*bsnes*{: .rg552only }<br />*bsnes2014_balanced*{: .rg552only }<br />*bsnes2014_performance*{: .rg552only }<br />*bsnes_mercury_balanced*{: .rg552only }<br />*bsnes_mercury_performance*{: .rg552only }<br />*mesen-s*{: .rg552only }|satellaview|.smc .sfc .swc .fig .bs .bsx .zip .7z|Good|Good|
|[Nintendo<br/>Super Famicom](nintendo-sfc)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />beetle_supafaust<br /> *beetle_snes*{: .rg552only } <br /> *bsnes*{: .rg552only }<br /> *bsnes2014_balanced*{: .rg552only } <br /> *bsnes2014_performance*{: .rg552only } <br /> *bsnes_mercury_balanced*{: .rg552only } <br /> *bsnes_mercury_performance*{: .rg552only } <br /> *mesen-s*{: .rg552only }|sfc|.smc .sfc .swc .fig .zip .7z|Good|Good|
|[Nintendo<br/>Super NES](nintendo-sfc)|**snes9x**<br />snes9x2002<br />snes9x2005_plus<br />snes9x2010<br />beetle_supafaust<br />*beetle_snes*{: .rg552only }<br />*bsnes*{: .rg552only }<br />*bsnes2014_balanced*{: .rg552only }<br />*bsnes2014_performance*{: .rg552only }<br />*bsnes_mercury_balanced*{: .rg552only }<br />*bsnes_mercury_performance*{: .rg552only }<br />*mesen-s*{: .rg552only }|snes<br/>snesh (hacks)|.smc .sfc .swc .fig .zip .7z|Good|Good|
|[Nintendo<br/>Super NES MSU-1](nintendo-sfc)|**snes9x**<br />beetle_supafaust<br />*bsnes*{: .rg552only }<br />*mesen-s*{: .rg552only }|snesmsu1|.smc .fig .sfc .swc .zip .7z|Good|Good|
|[Nintendo<br/>Virtual Boy](nintendo-virtual-boy)|**beetle_vb**|virtualboy|.vb .zip .7z|Good|Good|
|[Panasonic<br/>3DO](panasonic-3do)|**opera**|3do|.iso .cue .bin .chd|Bad: Only low performance|Bad: Only low performance|
|[Philips<br/>CD-i](philips-cd-i)|**same_cdi**|cdi|.chd .iso|Mixed|Good|
|[Sega 32X](sega-mega-drive#32x-overview)|**picodrive**|sega32x|.32x .bin .md .smd .zip .7z|Good|Good|
|[Sega CD](sega-mega-drive#cd-overview)|**genesis_plus_gx**<br />picodrive|segacd|.chd .cue .iso .m3u|Good|Good|
|[Sega<br/>SG-1000](sega-sg-1000)|**gearsystem**<br />genesis_plus_gx<br />picodrive|sg-1000|.bin .sg .zip .7z|Good|Good|
|[Sega<br/>Game Gear](sega-game-gear)|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|gamegear<br/>gamegearh (hacks)|.gg .bin .zip .7z|Good|Good|
|[Sega<br/>Genesis](sega-mega-drive)|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|genesis<br/>genh (hacks)|.gen .md .sg .smd .bin .zip .7z|Good|Good|
|[Sega<br/>Master System](sega-master-system)|**gearsystem**<br />genesis_plus_gx<br />picodrive<br />smsplus|mastersystem|.sms .bin .zip .7z|Good|Good|
|[Sega<br/>Mega-CD](sega-mega-drive#cd-overview)|**genesis_plus_gx**<br />picodrive|megacd|.chd .cue .iso .m3u|Good|Good|
|[Sega<br/>Mega Drive](sega-mega-drive)|**genesis_plus_gx**<br />genesis_plus_gx_wide<br />picodrive|megadrive<br />megadrive-japan|.gen .bin .md .sg .smd .zip .7z|Good|Good|
|[Sega<br/>Saturn](sega-saturn)|**yabasanshiroSA**|saturn|.cue .iso .chd|Mixed: Almost any game is fully playable, but not at full speed|Good|
|[Sega<br/>Dreamcast](sega-dreamcast)|**flycast**<br />flycast2021|dreamcast|.cdi .gdi .chd .m3u|Mixed: Some games run well, others are unplayable|Mixed: Some games run well, others are unplayable|
|[SNK<br/>Neo Geo](snk-neo-geo)|**fbneo**<br />mame2003_plus<br />fbalpha2012<br />fbalpha2019<br />mame2010<br />mame2015<br />mame2016<br />mame|neogeo|.7z .zip|Good|Good|
|[SNK<br/>Neo Geo CD](snk-neo-geo-cd)|**neocd**<br />fbneo|neocd|.chd .cue .iso|Good|Good|
|[SNK<br/>Neo Geo Pocket](snk-neo-geo-pocket)|**beetle_ngp**<br />race|ngp|.ngp .ngc .zip .7z|Good|Good|
|[SNK<br/>Neo Geo Pocket Color](snk-neo-geo-pocket)|**beetle_ngp**<br />race|ngpc|.ngc .zip .7z|Good|Good|
|[Sony<br/>PlayStation](sony-playstation)|**pcsx_rearmed2023**<br />pcsx_rearmed<br />duckstation<br />swanstation|psx|.bin .cue .img .pbp .mdf .toc .cbn .m3u .ccd .chd .iso|Good|Good|
|[Sony<br/>PSP](sony-psp)|**PPSSPPSDL**<br />ppsspp|psp|.chd .cso .pbp .iso|Mixed: Many games run well, especially with frameskip. Some games are unplayable|Mixed: Many games run well, especially with frameskip. Some games are unplayable|
|[Sony<br/>PSP Minis](sony-psp)|**PPSSPPSDL**<br />ppsspp| pspminis |.chd .cso .pbp .iso|Mixed: Most games are less demanding than PSP, and run well, though a few may run badly|Mixed: Most games are less demanding than PSP, and run well, though a few may run badly|
|[TimeTop<br />GameKing](timetop-gameking)|**mame**|gameking|.bin .gk .zip .7z|Mixed|Good|
|[Watara<br/>Supervision](watara-supervision)|**potator**|supervision|.sv .zip .7z|Good|Good|
|[Welback Holdings<br/>Mega Duck](welback-holdings-mega-duck)|**sameduck**|megaduck|.bin .zip .7z|Good|Good|

## Computers

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Amstrad<br/>CPC](amstrad-cpc)|**crocods**<br />cap32<br />ep128emu|amstradcpc|.dsk .sna [crocods: .kcr]<br/>[cap32: .tap .cdt .voc .m3u .zip .7z]|Good|Good|
|[Atari 800](atari-800)|**atari800**|atari800|.rom .xfd .atr .atx .cdm .cas .car .bin .a52 .xex .zip .7z|Good|Good|
|[Atari ST](atari-st)|**hatari**<br />HATARISA|atarist|.st .msa .stx .dim .ipf .m3u .zip .7z|Good|Good|
|[Commodore<br/>Amiga](commodore-amiga)|**puae2021**<br />puae<br />amiberry<br />uae4arm|amiga|.zip .uae .adf .dms .fdi .ipf .adz .lha .hdf .hdz|Good|Good|
|[Commodore<br/>C16](commodore-c16)|**vice_xplus4**|c16|.d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|[Commodore<br/>C64](commodore-c64)|**vice_x64**|c64|.d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|[Commodore<br/>C128](commodore-c128)|**vice_x128**|c128|.d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|[Commodore<br/>VIC-20](commodore-vic-20)|**vice_xvic**|vic20|.20 .40 .60 .a0 .b0 .d64 .d71 .d80 .d81 .d82 .g64 .g41 .x64 .t64 .tap .prg .p00 .crt .bin .gz .d6z .d7z .d8z .g6z .g4z .x6z .cmd .m3u .vsf .nib .nbz .zip|Good|Good|
|Enterprise 64/128|**ep128emu**|ep64-128|.img .dsk .tap .dtf .com .trn .128 .zip .7z|Good|Good|
|[Microsoft<br/>DOS](microsoft-dos)|**dosbox_pure**<br />dosbox_core|pc|.com .bat .exe .dosz, disk images (iso, cue, img, ima, vhd) can be put into the .dosz|Good|Good|
|[Microsoft<br/>MSX](microsoft-msx)|**bluemsx**<br />fmsx|msx| .dsk .mx1 .mx2 .rom .zip .7z .m3u|Good|Good|
|[Microsoft<br/>MSX2](microsoft-msx)|**bluemsx**<br />fmsx|msx2|.dsk .mx1 .mx2 .rom .zip .7z .m3u|Good|Good|
|[NEC<br/>PC-88](nec-pc-88)|**quasi88**|pc88|.d88 .u88 .m3u|Good|Good|
|[NEC<br/>PC-98](nec-pc-98)|**np2kai**<br />nekop2|pc98|.d98 .zip .98d .fdi .fdd .2hd .tfd .d88 .88d .hdm .xdf .dup .hdi .thd .nhd .hdd .hdn|Mixed: Not powerful enough for some games|Good|
|[Philips<br/>Videopac](magnavox-odyssey2)|**o2em**|videopac|.bin .zip .7z|Good|Good|
|[Sega<br/>SC-3000](sega-sc-3000)|**bluemsx**|sc-3000|.sg .bin .zip .7z|Good|Good|
|[Sharp<br/>X1](sharp-x1)|**x1**|x1|.dx1 .2d .2hd .tfd .d88 .88d .hdm .xdf .dup .tap .cmd .zip .7z|Good|Good|
|[Sharp<br/>x68000](sharp-x68000)|**px68k**|x68000|.dim .img .d88 .88d .hdm .dup .2hd .xdf .hdf .cmd .m3u .zip .7z|Good|Good|
|[Sinclair<br/>ZX81](sinclair-zx81)|**81**|zx81|.tzx .p .t81 .zip .7z|Good|Good|
|[Sinclair<br/>ZX Spectrum](sinclair-zx-spectrum)|**fuse**<br />ep128emu|zxspectrum|.tzx .tap .z80 .rzx .scl .trd .dsk .zip .7z|Good|Good|
|Videoton TVC|**ep128emu**|tvc|.img .dsk .cas .tvcwav .zip .7z|Good|Good|

## Fantasy/Open Source Consoles

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Aquaplus<br/>P/ECE](aquaplus-piece)|**piemu**|piece|.pex .pfi|Good|Good|
|[Arduboy](arduboy)|**arduous**|arduboy|.hex|Good|Good|
|[Belogic<br/>Uzebox](belogic-uzebox)|**uzem**|uzebox|.uze|Good|Good|
|CHIP-8|**jaxe**|chip-8|.ch8 .sc8 .xo8|Good|Good|
|[Lexaloffle<br/>Pico-8](lexaloffle-pico-8)|**fake08**<br />pico8|pico-8|.png .p8|Good|Good|
|LowRes NX|**lowresnx**|lowresnx|.nx|Good|Good|
|[Nesbox<br/>TIC-80](nesbox-tic-80)|**tic80**|tic-80|.tic|Good|Good|
|Vircon32|**vircon32**|vircon32|.v32|Good|Good|
|WASM-4|**wasm4**|wasm4|.wasm|Good|Good|

## Game Engines

{: .systemtable }
|Manufacturer/System|Core/Emu|ROM Path|Extension|RG351|RG552|
|---|---|---|---|---|---|
|[Build Engine](build-engine)|**raze**|build|[.build](build-engine#how-to-create-a-build-file)|||
|[Doom](doom)|**gzdoom**<br />lzdoom<br />prboom|doom|[.doom](doom#how-to-create-a-doom-file)|||
|[EasyRPG](easyrpg)|**easyrpg**|easyrpg|.zip .easyrpg .ldb|||
|[OpenBOR](openbor)|**openbor**|openbor|.pak|||
|[ScummVM](scummvm)|**scummvmsa**<br />scummvm|scummvm|.scummvm|||
|[Solarus](solarus)|**solarus**|solarus|.solarus|||
|[Sun Microsystems<br/>J2ME](sun-j2me)|**freej2me**|j2me|.jar|Good: Quite smooth playing|Good: Quite smooth playing|
|[Wolfenstein 3D](wolfenstein-3d)|**ecwolf**|ecwolf|[.ecwolf](wolfenstein-3d#how-to-create-a-ecwolf-file)|||
|Infocom<br/>Z-Machine|**mojozork**|zmachine|.dat .z1 .z3 .zip .7z|||

# BIOS 
Some platforms need bios files, these should go in /storage/roms/bios.
You can check which bios you’re missing directly on your device by pressing START, Games Settings, Missing Bios.
