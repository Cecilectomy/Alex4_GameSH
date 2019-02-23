# Alex4_GameSH
Alex The Alligator 4 (Alex4) working on the GameShell

## Installing

```
mkdir -p ~/apps/Menu/Alex4
cd ~/apps/Menu/Alex4
wget https://github.com/Cecilectomy/Alex4_GameSH/archive/master.zip -O Alex4.zip
unzip -j Alex4.zip
```

Obviously, you can also move to anywhere in `~/apps/Menu` or `~/launcher/Menu/GameShell` including subdirectories and/or using `##_` prefix for better organization. Example: `~/launcher/Menu/GameShell/20_Indie/10_Alex4`.

## Running

The first time you run the launch script, it will check if alex4 has been installed and install it if it has not (This may cause the "Loading" screen to appear for several minutes. This also requires an internet connection). You can do this manually beforehand with `sudo apt-get install -y alex4`.

It will then check for the alex4.ini file and create it with the appropriate graphics settings for the gameshell if it does not exist. If for some reason you have already installed alex4 and already have an alex4.ini, you will have to manually edit your alex4.ini

Make sure the ~/.alex4/alex4.ini contains the following
```
[graphics]
fullscreen=1
f_width=320
f_height=240
```

## Remapping Keys

The launch script uses xmodmap to remap the A and B keys to Control and Alt so the game can be played. When quitting the game, the script will remap back to the original keyboard mappings. If the game crashed or something, you may have to reboot or connect to the gameshell and reset keyboard.

`setxkbmap`
