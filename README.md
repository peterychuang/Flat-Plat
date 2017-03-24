Flat-Plat-Blue
==============
A Material Design-like flat theme for GTK3, GTK2, and GNOME Shell.
This is a fork of [Flat-Plat Theme](https://github.com/nana-4/Flat-Plat), but with the pinkish colours changed to blue.
In addition, I have also made a following changes to suit my own taste:
* Transparent top bar
* Font changed to Open Sans
* Changed colour for running apps dots
* Various minor changes and improvements in the colour scheme

Features
--------
<img src="img/Button.gif" alt="Button" align="right" />
* Supports ripple effect animations (only GTK3 apps).
* Supports both light and dark variants.
* Supports [Dash to Dock](https://micheleg.github.io/dash-to-dock/) extension's theming.
* Appears more beautiful when you use a font family that including `Medium` and `Light` weight.

Requirements
------------
* GNOME/GTK+ 3.20 or above
* The `gnome-themes-standard` package for GTK2
* The pixmap (or pixbuf) engine for GTK2

> _If default Adwaita works fine, it should also works fine._

Installation
------------

### Manual Installation
1. Download [Flat-Plat-Blue](https://github.com/peterychuang/Flat-Plat-Blue/releases/download/3.24/Flat-Plat-Blue-20170324.tar.gz) and extract the content inside.

2. In your terminal, cd into the Flat-Plat-Blue directory

3. Run ```sudo sh install.sh```

4. Select the theme using `gnome-tweak-tool` or other suitable tools.

5. Optionally;
  - Set the font size to `9.75` (= 13px at 96dpi) or `10.5` (= 14px at 96dpi).
  - Open the `chrome` folder on `/usr/share/themes/Flat-Plat`* and drag and drop the `.crx` files onto the Chrome/Chromium _Extensions_ page.

### Manual Uninstallation
- Delete the installed directories.

  ```sh
  sudo rm -rf /usr/share/themes/Flat-Plat-Blue{,-compact,-dark,-dark-compact,-light,-light-compact}
  ```

GDM (Lock/Login Screen)
-----------------------
You can change the GDM theme by replacing the default GNOME Shell theme.  
However, if it fails, the desktop environment may not operate correctly. So please **be careful** if doing this.
> **:warning: Cautions:**
> - When applying this, other third-party GNOME Shell themes would look broken.
> - If GNOME Shell has been updated, you will need to install this again.

### Installation
1. After selecting the GTK+ theme, back up and replace the existing `.gresource` file.

  ```sh
  GTK_THEME=$(gsettings get org.gnome.desktop.interface gtk-theme | sed "s/'//g")
  sudo cp -iv --backup /usr/share{/themes/$GTK_THEME,}/gnome-shell/gnome-shell-theme.gresource
  ```

  > _Developer note:_  
  > If you don't want to overwrite the backup on the second and subsequent runs, delete the `--backup` option.

2. Restart GNOME Shell. (press <kbd>Alt</kbd> + <kbd>F2</kbd>, then type `r`)

### Uninstallation
1. Restore to the original theme from the backup.

  ```sh
  sudo mv -iv /usr/share/gnome-shell/gnome-shell-theme.gresource{~,}
  ```

3. Restart GNOME Shell (On X.org: press `Alt`+`F2`, then type `r`).


### Uninstallation
1. Restore to the original theme from the backup.

  ```sh
  sudo mv -iv /usr/share/gnome-shell/gnome-shell-theme.gresource{~,}
  ```

2. Restart GNOME Shell. (press <kbd>Alt</kbd> + <kbd>F2</kbd>, then type `r`)

Other Info
----------
* License: GPLv2
* Forked by [Peter Y. Chuang - Novelist](https://novelist.xyz)
