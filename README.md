Flat-Plat-Blue
==============
A Material Design-like flat theme for GTK3, GTK2, and GNOME Shell.
This is a fork of [Flat-Plat Theme](https://github.com/nana-4/Flat-Plat), but with the pinkish colours changed to blue.
In addition, I have also made a following changes to suit my own taste:
* Transparent top bar
* Font changed to Open Sans
* Changed colour for running apps dots.

Features
--------
<img src="img/Button.gif" alt="Button" align="right" />
* Supports ripple effect animations (only GTK3 apps).
* Supports both light and dark variants.
* Supports [Dash to Dock](https://micheleg.github.io/dash-to-dock/) extension's theming.
* Appears more beautiful when you use a font family that including `Medium` and `Light` weight.

Requirements
------------
* GNOME/GTK+ 3.20 (I have only tested on 3.20)
* The `gnome-themes-standard` package for GTK2
* The pixmap (or pixbuf) engine for GTK2

> _If default Adwaita works fine, it should also works fine._

Installation
------------
1. Download a archive.
  * [3.20.20160411](https://github.com/peterychuang/Flat-Plat-Blue/releases/download/20160411/Flat-Plat-Blue-20160411.tar.gz) for GNOME 3.20	
2. Extract it to the themes directory.
  * For system-wide installation to `/usr/share/themes`
  * For user-specific installation to `~/.themes`
3. Use `gnome-tweak-tool` to change the theme.

GDM (Lock/Login Screen)
------------------------------
To change the GDM theme, you need to rewrite a system file.
Please **be careful** because if it fails, desktop environment may not operate correctly.
> **Notes:**
> * Not supported for GNOME 3.14, sorry.
> * When applying this, other shell themes might look broken.

### Install
1. Backup an existing .gresource file. _(Skip this step when you just update it.)_

        sudo cp /usr/share/gnome-shell/gnome-shell-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource~
2. Replace with the new one.
  * If you put this theme in `/usr/share/themes`:

          sudo cp /usr/share/themes/Flat-Plat/gnome-shell/gnome-shell-theme.gresource /usr/share/gnome-shell
  * If you put this theme in `~/.themes`:

          sudo cp ~/.themes/Flat-Plat/gnome-shell/gnome-shell-theme.gresource /usr/share/gnome-shell
3. Restart GNOME Shell (press `Alt`+`F2`, then type `r`).

### Uninstall
1. Restore to original theme from the backup.

        sudo mv -f /usr/share/gnome-shell/gnome-shell-theme.gresource~ /usr/share/gnome-shell/gnome-shell-theme.gresource
2. Restart GNOME Shell (press `Alt`+`F2`, then type `r`).


Other Info
----------
* License: GPL
* Chrome's scrollbars extension forked from [Adwaita Scrollbars](https://github.com/gnome-integration-team/chrome-gnome-scrollbar). Thanks for original author.
* Forked by [Peter Y. Chuang - Novelist](https://novelist.xyz)
