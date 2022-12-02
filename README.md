# [WarThunder](https://warthunder.com)

Game produced by Gaijin, This flatpak is not associated with Gaijin, Supported by, or affiliated with.

## Gamescope

This flatpak utilizes gamescope via the [utility package](https://github.com/flathub/com.valvesoftware.Steam.Utility.gamescope).
This can be installed manually via `flatpak install com.valvesoftware.Steam.Utility.gamescope`,

### Arguments

To pass arguments to gamescope, once can provide an enviroment variable called `GAMESCOPE_ARGS`.

You must accomplish this via terminal, as Flatseal does not work well with it.
To do this, execute the following, filling in the args between the `"`.

```bash
flatpak override --user net.gaijin.WarThunder --env=GAMESCOPE_ARGS=""
```

Example:

```bash
flatpak override --user net.gaijin.WarThunder --env=GAMESCOPE_ARGS="-b -o 30 -r 144 -W 1920 -H 1046"
```


## Custom directory

By providing an enviroment variable called `CUSTOM_DIR` with a path value,
you can have War Thunder run in a custom directory.

You can acomplish this via Flatseal.

Steps:

1. Open Flatseal
2. Select War Thunder on the left
3. Scroll down to "Filesystem", "Other files"
4. Add a new entry via the icon with a "folder" and "plus" sign
5. Input the path you want to let War Thunder run in. IE `/home/name/Games/WarThunder`
6. Scroll down to "Environment", "Variables"
7. Click the "plus" sign to add a new entry
8. Write down an enviroment variable, IE `CUSTOM_DIR=/home/name/Games/` (NOTICE: WarThunder is not included here)
9. Run War Thunder
10. Notice that War Thunder is now working using CUSTOM_DIR
