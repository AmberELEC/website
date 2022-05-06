# Troubleshooting

- [Installation Troubleshooting](/installation#issues)
- [Emulator Crashes](#emulator-crashes)
- [Collecting Log Files](#collecting-log-files)

## Emulator Crashes

When you try to launch a game and the screen turns black or flashes the AmberELEC logo before returning to the game menu, you've had an emulator crash.

The first two things to do when troubleshooting an emulator crash are to check for missing bios files or for a bad rom. To check for missing bios files, you can run the Missing Bios tool. Press `Start`, and then select `Game Settings` > `Missing Bios` (in the System Settings section).

Bad roms can be harder to diagnose. Check whether other games will run successfully on the emulator. If most of your other games for the system run correctly, it's more likely that one particular rom you have is bad. You can try running the rom on the same emulator core on your computer. If it won't run on your computer, you have a bad rom.

If you're emulating Arcade systems, you may have an incomplete or incompatible rom. Arcade roms need to be specific to the emulator that you're running them on, and if you're using Merged or Split romsets you may be missing rom dependencies. Especially if you're having trouble with multiple arcade roms, it may be worthwhile to read through the [Arcade Overview](/guides/arcade#overview), and possibly the [Arcade Primer](/guides/arcade#primer) if you want to really understand how Arcade emulation works.

It's possible that there's a bug in the emulator that prevents it from working for that specific rom. It can be helpful to google the name of the emulator core and the game to see if any issues have already been reported for it. If you know how to find github issues, that can be a good place to look to see if there are any current problems that could be causing the crash.

It's always a good idea to check the [Log files](#collecting-log-files). They'll usually be able to tell you the specific error, and that can be helpful in figuring out why the crash is occurring.

## Collecting Log Files

Log files can be very helpful to debugging. AmberELEC writes log files to a temporary directory, so you'll need to collect the logs for an event before shutting down your console.

Log files are stored in `/tmp/logs`. The most helpful log files you'll find are `exec.log` and `es_log.txt`. The files `es_launch_stdout.log` and `es_log_stderr.log` may also be helpful.

You can copy the files to your computer using SFTP or SCP, or read them from the device using SSH (see [Accessing the Handheld Over a Network](/guides/getting-to-know-amberelec#accessing-the-handheld-over-a-network)). You can also access them as a Windows Share by pressing `win+r` on your keyboard and typing `\\<IP>\logs`. If you don't know your device's IP address, you can find it by pressing start on the device and going into `Network Settings`. Finally, you can read them directly on the device using 351Files, but the log files are generally long and contain a lot of useless information, so this is usually useful only when there is no other option.

When looking through the logs, the quickest way to find what you're looking for is usually to do a search on one of the words from the title of the game you were trying to play. This helps you get directly to the relevant section of the log.

Since the log files are cleared on every console shutdown, the easiest way to get a log file that's relatively free from unnecessary information is to turn off your console, turn it back on, and do nothing other than triggering the issue before collecting the log. Playing multiple games can add a lot of content to the log files.

The easiest way to share a log file, especially if you don't understand it well enough to parse through it, it to paste the entire file into [pastebin](https://pastebin.com/) and share that. If you are able to locate the problem, sharing a few relevant lines on the Discord may also work, though you may still be asked to provide additional context.