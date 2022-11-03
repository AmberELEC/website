# FAQ

{: #next-release }
**Q:** [![link](/images/link-45deg.svg)](#next-release) When is the next release?  Why are you still on an old version of RetroArch/$MyFavoriteEmulator/$MyFavoriteCore?

**A:** AmberELEC is developed to be a curated, stable firmware.  We update RetroArch, libretro cores and standalone emulators at the time we compose a new release.  As a small team, we are mostly focused on improvements to the environment (fixes, implementing new features, expanding supported systems), and we only release when those features are ready.  You can expect us to skip multiple RetroArch updates at a time; most of the core improvements do not actually benefit our device and so it is unnecessary for us to iterate so quickly or burden our users with constant updates that only fix one or two games out of tens of thousands of supported titles.

***

{: #pre-release-cores }
**Q:** [![link](/images/link-45deg.svg)](#pre-release-cores) I installed the pre-release but the cores and emulators are the same as the current stable release.  I want to help test $MyFavoriteEmulator/$MyFavoriteCore/$SomeNewGameOrWhatever on AmberELEC!

**A:** This is intentional; you will only see the system improvements our team is actively developing.  By not tracking the daily movements of our upstream projects, we are allowed to focus on the AmberELEC environment.

***

{: #playstation-controls }
**Q:** [![link](/images/link-45deg.svg)](#playstation-controls) Controls and/or rumble are not working on PlayStation.

**A:** [Solution](/systems/sony-playstation#controls-and-rumble-not-working-in-games).

***

{: #skip-bios }
**Q:** [![link](/images/link-45deg.svg)](#skip-bios) My PlayStation game is not starting or getting stuck during BIOS Intro.

**A:** Activate the *"Skip BIOS Intro"* core option (from **RetroArch > Quick Menu > Options**).

***

{: #rga-shader }
**Q:** [![link](/images/link-45deg.svg)](#rga-shader) I set a shader/overlay but they're not showing.

**A:** RGA scaling prevents them to show, you have to choose one or the other, so check that RGA scaling is turned off for that system/game.

***


{: #es-hidden }
**Q:** [![link](/images/link-45deg.svg)](#es-hidden) I'm trying to add games for a system but the system doesn't appear in EmulationStation.

**A:** Check in EmulationStation's settings to ensure the system isn't hidden (most are not).  EmulationStation won't show a system if there are no files in the directory of the file extensions it expects to find there.

***

{: #games-partition }
**Q:** [![link](/images/link-45deg.svg)](#games-partition) I flashed AmberELEC but I have no GAMES partition.

**A:** That partition is created during initialization at the first boot, so insert your microSD card inside your RG351 device and boot it.  It will do some work, reboot and launch EmulationStation.  Now you can shut the device down, eject the card and work with the GAMES partition on your computer.

***

{: #initialization }
**Q:** [![link](/images/link-45deg.svg)](#initialization) I flashed AmberELEC but it won't initialize, or initialization takes forever.

**A:** The most likely cause of this is using the wrong image for your device. Please make sure that you're using the RG351P/M image for a P or M device, and the RG351V image for a V device. Other possible causes include corrupted flashes (some computers seem incapable of producing a good flash), or a corrupted/bad/fake MicroSD card. Most of the SD cards that these systems come with are low quality and fail quickly. See the [Installation](/installation#initialization-never-finishestakes-forever) page for more info on this issue.

***

{: #windows-partition }
**Q:** [![link](/images/link-45deg.svg)](#windows-partition) AmberELEC initialized my card, but I still cannot see the GAMES partition on my Windows 8 (or older) computer.

**A:** Open 'Disk Management', identify which storage device is your SD card, then assign the last partition a drive letter.  This isn't necessary on Windows 10.

Detailed instructions:
- On your windows PC press the ⊞ Windows key on your keyboard and the R key at the same time, then:
- type "diskmgmt.msc"
- Look for a Disk with the amount of space you SD card has (Example : if you have a 32gb Card, look for a Disk with 32gb)
- Look for the rightmost partition, right click it and select "Change drive letter and Paths.."
- Follow the wizard, give it a drive letter and it should be fixed.

***

{: #brightness }
**Q:** [![link](/images/link-45deg.svg)](#brightness) Why is my brightness stuck at 100%?

**A:** Anbernic uses a wide variety of screens, some of which reach max brightness at 35%. If you have one of these screens, you'll have to turn the brightness down a lot to see any change in the actual brightness of the screen. Also because of this, our brightness step size is set to 1% so that people with these screens can have a decent range of brightness options. You'll just need to get past that top 65%, and then the brightness hotkey should work fine.

The easiest way to get the brightness set up if you have this issue is to change the brightness to 30% in the [ES System Settings Menu](/guides/menus#system-settings). From there you should be able to adjust the brightness to your desired level pretty easily.

***

{: #saving }
**Q:** [![link](/images/link-45deg.svg)](#saving) How do I save my progress?

**A:** You have many options to do that depending on the system you're playing, but generally those are the main ways:
- **NATIVELY**: Saving from inside the game if it's supported, varies depending on the game/system.
- **SAVESTATE**: Saving a save state SELECT+R1 (load with SELECT+L2), you can check all the hotkeys [here](/guides/getting-to-know-amberelec#controls-and-hotkeys), however I would not rely on 100% on this solution: a good idea is to use the save state AND the native saves (see above).
- **AUTO SAVE**: Enabling auto save/load game inside the system/game options, that will save the game when you quit and reload it when you open it the next time. Please be aware that if you force quit (turn off, reset, [kill the game process](/guides/getting-to-know-amberelec#killing-the-game-process)) will not save your game. The best way is to use the [correct hotkey](/guides/getting-to-know-amberelec#retroarch-hotkeys) to quit.

***

{: #special-characters }
**Q:** [![link](/images/link-45deg.svg)](#special-characters) Why can't I log into my WiFi/RetroAchievements/Screen Scraper?

**A:** There seems to be an issue with passwords that contain special characters. Please try changing your password to one using only alphanumeric characters and see if that helps.

***

{: #reflash-backup }
**Q:** [![link](/images/link-45deg.svg)](#reflash-backup) Is it possible to backup before re-flashing?

**A:** Yes, take a look [here](/guides/getting-to-know-amberelec#backups-and-identity).

***

{: #missing-screenshots }
**Q:** [![link](/images/link-45deg.svg)](#missing-screenshots) I cannot see my new screenshots in the screenshots system.

**A:** Games list must be reloaded in order to see the freshly added screenshots: press START > Games Settings > Update Games List

***

{: #screenshot-hotkey }
**Q:** [![link](/images/link-45deg.svg)](#screenshot-hotkey) Hotkey for screenshot (SELECT + B) is resetting my game instead of taking a screenshot.

**A:** You may have upgraded from an old version.  Despite the upgrade, the hotkeys were not automatically changed to the new configuration.  You can fix this as follows: **EmulationStation Main Menu > System Settings > Danger Zone! > Reset Retroarch Config to Default**.

***

{: #blinking-box }
**Q:** [![link](/images/link-45deg.svg)](#blinking-box) There's a blinking white box/dead pixel in the bottom left corner, but only in menus.

**A:** That's actually the 'Controller Indicator'.  It's hidden in the default theme.  If you use an alternate theme, you can turn it off in the EmulationStation Main Menu.

***

{: #anberports }
**Q:** [![link](/images/link-45deg.svg)](#anberports) I installed Anberports and have a problem with one of the ports.

**A:** Anberports is now considered abandoned. Please use [PortMaster](/portmaster) instead.

***

{: #boot-logo }
**Q:** [![link](/images/link-45deg.svg)](#boot-logo) Can I change the boot logo for AmberELEC?

**A:** The boot logo for AmberELEC can't be changed, and this is not a feature that we have any plans to support in the future.

***

{: #broken-hardware }
**Q:** [![link](/images/link-45deg.svg)](#broken-hardware) I have a hardware problem (physically broken part).

**A:** We recommend you return your device for replacement.  Many users are impatient and do not want to wait, but truthfully these devices can be tricky for people new to disassembly to handly, and we have watched many users on our Discord irreversibly damage their while following so-called 'easy' YouTube/Reddit guides.

***

{: #game-download }
**Q:** [![link](/images/link-45deg.svg)](#game-download) Where can I download games?

**A:** You can [find many community-developed homebrew titles here](https://www.romhacking.net/homebrew/).  Many commercial games are available on GOG, Steam.  For physical products, you are responsible for providing ROM or disc images and is outside the scope of our project (there is nothing different about it just because your target is a RG351-family device); use Google to find resources and information.  We do not condone piracy; please do not discuss piracy or link to commercial software in our Discord.

***

{: #romhacks }
**Q:** [![link](/images/link-45deg.svg)](#romhacks) I keep hearing about ROM hacks, where can I find them?

**A:** [Here is a good place to start](https://www.romhacking.net/hacks/).  Applying the patches to your games is outside of the scope of our FAQ; you can find tutorials on that site or on Google.

***

{: #custom-scripts }
**Q:** [![link](/images/link-45deg.svg)](#custom-scripts) Can I run custom scripts? If so, how?

**A:** Reference the directory `~/.config/distribution/modules` via Secure Shell or by navigating the SD card itself. The files there are Bash shell scripts (see [The Shell Scripting Tutorial website](https://www.shellscript.sh/) for a primer). Note that the Tools directory is fixed and will be written over on reboot. This is to protect system integrity and basic AmberELEC functions. Your custom scripts can be placed in the `/roms/ports` folder.  Make sure to set the executable mode flag (`chmod +x` or similar) before running it.

AmberELEC is like a console.  Everything, except games (your GAMES partition/ROMs), are locked down to prevent corruption from an errant reset or power off, which these devices are unfortunately prone to.

***

{: #ra-hardcore }
**Q:** [![link](/images/link-45deg.svg)](#ra-hardcore) Retroachievements Hardcoremode is not working

**A:** Retroachievements don't work on spectator mode. For fbneo disable patched romsets in the Options as well.

***

{: #kiosk }
**Q:** [![link](/images/link-45deg.svg)](#kiosk) I'm stuck in kiosk mode. How do I get out?

**A:** Press start, select "Unlock UI Mode", and then press A A A B A.

***

{: #cps }
**Q:** [![link](/images/link-45deg.svg)](#cps) My CPS games are missing

**A:** Support for separate CPS folders was removed in Pineapple Forest. It doesn't really make sense to have separate folders for individual arcade boards when the arcade roms themselves come from the fbneo romset. It's recommended that instead of using cps1-3 folders, you use the [CPS Auto Collections](/guides/collections#automatic-game-collections) that are built into ES. To activate them, place your CPS roms in the fbneo folder, scape them, and then turn on the CPS Auto Collections in the Game Collections menu under the main menu.

If you absolutely don't want to use Auto Collections and just want support for cps1-3 folders, you can add this [Capcom ES Systems Config](/resources/es_systems/es_systems_capcom.cfg) to `/storage/.config/emulationstation/`. See [How to work with es_systems.cfg on AmberELEC](/guides/advanced-topics#how-to-work-with-es_systemscfg-on-AmberELEC) for more information on using custom es_systems configurations.

***

{: #fast-forward }
**Q:** [![link](/images/link-45deg.svg)](#fast-forward) I like using fast forward for grindy games like Pokemon, but fast forward isn't fast enough. Is there any way to make it faster?

**A:** There are a couple of tweaks that will give small performance increases. You can try different emulator cores, as some of them use less processing power and can spend more on fast forwarding. You can also disable sound, which usually gives a few extra frames on fast forward. There are currently no ways to get really significant fast forward speedup right now.

It's possible that a standalone could be implemented that could significantly improve fast forwarding, but there's no guarantee that it would work and it would take a lot of time and effort. There are currently no developers working on this problem, and it's very low on the priority list, especially since it would take a lot of work and may not succeed anyway. AmberELEC is a community project though, so if fast forwarding is really important to you and you'd like to work on it, go for it!
