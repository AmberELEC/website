# PC-88

## BIOS
While this core technically supports loading ROMs from the top level of the BIOS folder, this causes a conflict with MSX emulation also requiring a file named "disk.rom" there, so you should create a `quasi88` subfolder inside `/roms/bios` and put them there instead.

|Filename | MD5 |
|---------|-----|
|quasi88/disk.rom | 793f86784e5608352a5d7f03f03e0858|
|quasi88/font.rom | cd428f9ee8ff9f84c60beb7a8a0ef628|
|quasi88/n88knj1.rom | d81c6d5d7ad1a4bbbd6ae22a01257603|
|quasi88/n80.rom | 5d6854624dd01cd791f58727fc43a525|
|quasi88/n88_0.rom | d675a2ca186c6efcd6277b835de4c7e5|
|quasi88/n88_1.rom | e844534dfe5744b381444dbe61ef1b66|
|quasi88/n88_2.rom | 6548fa45061274dee1ea8ae1e9e93910|
|quasi88/n88_3.rom | fc4b76a402ba501e6ba6de4b3e8b4273|
|quasi88/n88n.rom | 2ff07b8769367321128e03924af668a0|
|quasi88/n88.rom | 4f984e04a99d56c4cfe36115415d6eb8|

There is a "pseudo BIOS" if you do not provide these files, but there is a 99% chance that it won't work.

## Controls
At this point in time, you can only map the Z, X, I, space, and enter keys, and 2/4/6/8 from the numeric keypad. In the likely event that you want to play a game which uses any more than this, you will need a USB keyboard plugged in.

## Compatibility
If you see a screen saying "how many files?" this is fine, wait for a bit, as the disk should soon autoboot.

Some games (such as Donkey Kong 3: Dai Gyakushuu) may need "BASIC mode" in the core options set to "N88 V1H" otherwise the colours will be all wrong.
