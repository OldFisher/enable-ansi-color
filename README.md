# enable-ansi-color
A script to launch programs emitting ANSI color codes in standard Windows 10 terminal (cmd, conhost).

Sometimes a program emits ANSI color codes which are not parsed, littering the output with visual garbage.
This script pair redirects the program output to Powershell console which interprets the codes properly,
removing the garbage and showing the intended colors.

## How to use:
* Put `enable-ansi-color.bat` and `enable-ansi-color.ps1` into directory in PATH.
* Launch target program with `enable-ansi-color program.exe <args...>` or with `start enable-ansi-colors program.exe <args..>` to spawn new terminal window.

Made and tested on Windows 10.

Licensed under Unlicense: see LICENSE or [Unlicense website](https://unlicense.org).
