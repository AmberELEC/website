# Getting Started

- [Transferring Bios](#transferring-bios)
- [Enable Wifi](#enable-wifi)
- [Install Drastic](#install-drastic)
- [Update Themes](#update-themes)
- [Scraping](#scraping)
- [Game Options](#game-options)
- [Sleep](#sleep)

## Transferring Bios

While we recommend sourcing your own rom files, the simplest way to have a fully functioning handheld is to copy the bios files from the stock OS. You can find these bios files by plugging your stock SD card into your computer (probably with a USB adapter) and looking in the `GAMES` partition for the `bios` folder. After you've installed 351ELEC, you can simply drop these files into 351ELEC's bios folder.

Please note that if you're using an RG351V, the bios files go on the same SD card that you store your roms on. This means if you use two SD cards, the bios files should go on SD2.

## Enable Wifi

Wifi opens up a lot of features on 351ELEC. With wifi, you can install packages and themes, use RetroAchievements, and even play with others online. The RG351P requires an external Wifi adapter, as it doesn't have a wireless card built in.

To enable Wifi, press `Start` to access the [Main Menu](Menus#main-menu), and then go into [Network Settings](Menus#network-settings). In that menu, toggle `Enable Wifi` to on, and enter your wifi network and password into `Wifi SSID` and `Wifi Key`.

## Install Drastic

This step is only necessary on version 20210603 (Crazy Hedgehog) and below.

Once you've [enabled wifi](#enable-wifi), you can install Drastic by pressing `Start` to access the [Main Menu](Menus#main-menu), go to [Updates & Downloads](Menus#updates--downloads), then `Packages`, and finally select `Drastic`.

## Update Themes

Once you've [enabled wifi](#enable-wifi), you can install themes to your device by pressing `Start` to access the [Main Menu](Menus#main-menu), go to [Updates & Downloads](Menus#updates--downloads), then `Themes`, and select the theme you'd like to download.

To change your theme, press `Start` to access the [Main Menu](Menus#main-menu), go to [UI Settings](#ui-settings), and then under `Theme Set` select the theme that you'd like to use.

## Scraping

Scraping allows you to download preview images and videos of games, as well as manuals and sometimes even game maps.

To scrape games, you need a [wireless connection](#enable-wifi), and you'll also need an account on [ScreenScraper](https://screenscraper.fr/). Once you have an account, press `Start` to access the [Main Menu](Menus#main-menu), then go to [Scrape](Menus#scrape). Enter your username and password in the `Username` and `Password` fields. Using the checkboxes, select which resources you want to get when scraping. Preview images are downloaded automatically, and so are the game's metadata (title, release date, developer, etc). That metadata is very useful, since you can set up Dynamic Game Collections using it.

## Game Options

351ELEC has a bunch of emulator settings that can be set directly from [EmulationStation](Glossary). They can be set for entire systems, or for single games. While 351ELEC tries to have good default settings, how games look is always a matter of personal preference, so it's good to experiment and learn what works for you.

### Per System

There are two ways to set per system settings. The easier one is to go into the system you want to change the settings for, pressing `Select` to access the [View Options Menu](Menus#view-options), and then choosing [Advanced Game Options](Menus#emulator-options). You can also press `Start` to access the [Main Menu](Menus#main-menu), go to [Game Settings](Menus#game-settings), and then to [Per System Advanced Configuration](Menus#emulator-options)

### Per Game

To set up the settings for a game, hover over the game and press X to access the [Game Options](Menus#game-options), and select [Advanced Game Options](Menus#emulator-options).

### Shaders

You can change shaders in the game options. While there are many to choose from, some of them can cause pretty bad slowdowns. Some popular shaders you might want to try include `Interpolation/Pixellate.glslp` and `Interpolation/Sharp-Bilinear-2X-Prescale.glslp`.

### Bezels and Overlays

Curretly, bezels and overlays have to be set in the RetroArch. Because of that, it's a little bit more complicated to set it up. If you'd like to add bezels or overlays, check out the [RetrArch Overrides](Advanced-Topics#retroarch-overrides) section.

## Sleep

While using EmulationStation (the main menu) or a RetroArch emulator, you can put the system to sleep by pressing and releasing the power button. You can wake the console by pressing the power button again. Please be aware that if you sleep while using standalone emulators or ports, your gamepad may stop working upon waking. This is due to a [hardware issue](Hardware-Issues#sleep), and you'll probably have to restart your console if this happens.
