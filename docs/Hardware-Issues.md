# Hardware Issues

While these issues are not specific to AmberELEC, there are a few issues with the RG351 hardware that come up a lot during support.

## Low Battery

RG351 devices have a tendency to act strangely below 35% battery. This can cause all kinds of issues, one of which is the "No Gamepads Detected" Error. If you're at low battery and start experiencing strange behavior, please try charging up the console as your first debugging step.

## Sleep

RG351 devices have issues with sleep when running standalone emulators or games. Sleep should work fine from EmulationStation (the main menu of the device), or from any RetroArch emulator. Sleeping in a standalone emulator or game is likely to cause the "No Gamepads Detected" error, or to simply cause the controls to stop working.

RG351 systems use an internal USB hub to connect to their gamepad. If USB isn't disabled when the device goes to sleep, it causes a kernel error when the device wakes up that messes up the gamepad connection. Unfortunately, there's currently no solution to this issue, so please only use sleep in EmulationStation and RetroArch.

## RG351P/M Permanent "No Gamepads Detected" Error

Before continuing on with this section, please read the [Low Battery](#low-battery) and the [Sleep](#sleep) section to make sure that neither of those matches the issues you are having.

While all consoles will give the "No Gamepads Detected" error at certain times, there are reports of some P and M devices that display this message the first time they are turned on, and where the issue is not solved by charging the console. Thanks to the work of Keltron3030, we now know that this problem is caused by a faulty USB controller chip. It's strongly recommended that if you have this issue, you exchange your console for a new one. If you’ve gotten the device from a questionable seller, it may be best to try to get your money back and order it from Anbernic’s official site or AliExpress page, or to find a distributor with a very high seller rating.

If you do open an issue with AliExpress or Amazon, please do not close the issue until your console is replaced or you get your money back. Some sellers will try to get you to close the issue preemptively, and then not follow through with the agreed fix.

If you know how to solder, you may be able to replace this chip on your own. The chip you want is the GL852G.
