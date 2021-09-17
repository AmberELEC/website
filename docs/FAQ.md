# FAQ

**Q:** When is the next release?  Why are you still on an old version of RetroArch/$MyFavoriteEmulator/$MyFavoriteCore?

**A:** 351ELEC is developed to be a curated, stable firmware.  We update RetroArch, libretro cores and standalone emulators at the time we compose a new release.  As a small team, we are mostly focused on improvements to the environment (fixes, implementing new features, expanding supported systems), and we only release when those features are ready.  You can expect us to skip multiple RetroArch updates at a time; most of the core improvements do not actually benefit our device and so it is unnecessary for us to iterate so quickly or burden our users with constant updates that only fix one or two games out of tens of thousands of supported titles.

***

**Q:** I installed the beta but the cores and emulators are the same as the current stable release.  I want to help test $MyFavoriteEmulator/$MyFavoriteCore/$SomeNewGameOrWhatever on 351ELEC!

**A:** This is intentional; you will only see the system improvements our team is actively developing.  By not tracking the daily movements of our upstream projects, we are allowed to focus on the 351ELEC environment.

***

**Q:** Controls and/or rumble are not working on PlayStation.

**A:** [Solution](System-Sony-PlayStation#controls-and-rumble-not-working-in-games).

***

**Q:** My PlayStation game is not starting or getting stuck during BIOS Intro.

**A:** Activate the *"Skip BIOS Intro"* core option (from **RetroArch > Quick Menu > Options**).

***

**Q:** I set a shader/overlay but they're not showing.

**A:** RGA scaling prevents them to show, you have to choose one or the other, so check that RGA scaling is turned off for that system/game.

***

**Q:** I'm trying to add games for a system but the system doesn't appear in EmulationStation.

**A:** Check in EmulationStation's settings to ensure the system isn't hidden (most are not).  EmulationStation won't show a system if there are no files in the directory of the file extensions it expects to find there.

***

**Q:** I flashed 351ELEC but I have no GAMES partition.

**A:** That partition is created during initialization at the first boot, so insert your microSD card inside your RG351 device and boot it.  It will do some work, reboot and launch EmulationStation.  Now you can shut the device down, eject the card and work with the GAMES partition on your computer.

***

**Q:** I flashed 351ELEC but it won't initialize, or initialization takes forever.

**A:** The most likely cause of this is using the wrong image for your device. Please make sure that you're using the RG351P/M image for a P or M device, and the RG351V image for a V device. Other possible causes include corrupted flashes (some computers seem incapable of producing a good flash), or a corrupted/bad/fake MicroSD card. Most of the SD cards that these systems come with are low quality and fail quickly. See the [Installation](Installation#initialization-never-finishestakes-forever) page for more info on this issue.

***

**Q:** 351ELEC initialized my card, but I still cannot see the GAMES partition on my Windows 8 (or older) computer.

**A:** Open 'Disk Management', identify which storage device is your SD card, then assign the last partition a drive letter.  This isn't necessary on Windows 10.

***

**Q:** I don't have the DS Emulator, Drastic.

**A:** Install it from **EmulationStation Main Menu > Updates & Downloads > Packages**.

***

**Q:** Why is my brightness stuck at 100%?

**A:** Anbernic uses a wide variety of screens, some of which reach max brightness at 35%. If you have one of these screens, you'll have to turn the brightness down a lot to see any change in the actual brightness of the screen. Also because of this, our brightness step size is set to 1% so that people with these screens can have a decent range of brightness options. You'll just need to get past that top 65%, and then the brightness hotkey should work fine.

***

**Q:** How do I save my progress?

**A:** You have many options to do that depending on the system you're playing, but generally those are the main ways:
- **NATIVELY**: Saving from inside the game if it's supported, varies depending on the game/system.
- **SAVESTATE**: Saving a save state SELECT+R1 (load with SELECT+L2), you can check all the hotkeys [here](Getting-to-Know-351ELEC#controls-and-hotkeys), however I would not rely on 100% on this solution: a good idea is to use the save state AND the native saves (see above).
- **AUTO SAVE**: Enabling auto save/load game inside the system/game options, that will save the game when you quit and reload it when you open it the next time. Please be aware that if you force quit (turn off, reset, [kill the game process](Getting-to-Know-351ELEC#killing-the-game-process)) will not save your game. The best way is to use the [correct hotkey](Getting-to-Know-351ELEC#retroarch-hotkeys) to quit.

***

**Q:** Why can't I log into my WiFi/RetroAchievements/Screen Scraper?

**A:** There seems to be an issue with passwords that contain special characters. Please try changing your password to one using only alphanumeric characters and see if that helps.

***

**Q:** Is it possible to backup before re-flashing?

**A:** Yes, take a look [here](Getting-to-Know-351ELEC#backups-and-identity).

***

**Q:** I cannot see my new screenshots in the screenshots system.

**A:** Games list must be reloaded in order to see the freshly added screenshots: press START > Games Settings > Update Games List

***

**Q:** Hotkey for screenshot (SELECT + B) is resetting my game instead of taking a screenshot.

**A:** You may have upgraded from an old version.  Despite the upgrade, the hotkeys were not automatically changed to the new configuration.  You can fix this as follows: **EmulationStation Main Menu > System Settings > Danger Zone! > Reset Retroarch Config to Default**.

***

**Q:** There's a blinking white box/dead pixel in the bottom left corner, but only in menus.

**A:** That's actually the 'Controller Indicator'.  It's hidden in the default theme.  If you use an alternate theme, you can turn it off in the EmulationStation Main Menu.

***

**Q:** I installed Anberports and have a problem with one of the ports.

**A:** The project has appears to have been abandoned for many months now.  It is unaffiliated with 351ELEC.  You can find more info [here](https://github.com/krishenriksen/AnberPorts).  If you must discuss it, we recommend the RGHandhelds Discord server as it will probably have more users who are familiar with it.

***

**Q:** I have a hardware problem (physically broken part).

**A:** We recommend you return your device for replacement.  Many users are impatient and do not want to wait, but truthfully these devices can be tricky for people new to disassembly to handly, and we have watched many users on our Discord irreversibly damage their while following so-called 'easy' YouTube/Reddit guides.

***

**Q:** Where can I download games?

**A:** You can [find many community-developed homebrew titles here](https://www.romhacking.net/homebrew/).  Many commercial games are available on GOG, Steam.  For physical products, you are responsible for providing ROM or disc images and is outside the scope of our project (there is nothing different about it just because your target is a RG351-family device); use Google to find resources and information.  We do not condone piracy; please do not discuss piracy or link to commercial software in our Discord or on our wiki.

***

**Q:** I keep hearing about ROM hacks, where can I find them?

**A:** [Here is a good place to start](https://www.romhacking.net/hacks/).  Applying the patches to your games is outside of the scope of our FAQ; you can find tutorials on that site or on Google.

***

**Q:** Can I run custom scripts? If so, how?

**A:** Reference the directory `~/.config/distribution/modules` via Secure Shell or by navigating the SD card itself. The files there are Bash shell scripts (see [The Shell Scripting Tutorial website](https://www.shellscript.sh/) for a primer). Note that the Tools directory is fixed and will be written over on reboot. This is to protect system integrity and basic 351ELEC functions. Your custom scripts can be placed in the `/roms/ports` folder.  Make sure to set the executable mode flag (`chmod +x` or similar) before running it.

351ELEC is like a console.  Everything, except games (your GAMES partition/ROMs), are locked down to prevent corruption from an errant reset or power off, which these devices are unfortunately prone to.