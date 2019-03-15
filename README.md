## Flat-Plat-Blue Theme

Flat-Plat-Blue Theme is a GNOME Shell/GTK Theme forked from [Materia Theme (formerly Flat-Plat)](https://github.com/nana-4/materia-theme/) with the following refinements:

* All coloured elements (e.g. check boxes, sliders, switches, etc) are changed into blue to provide a more consistent and comfortable visual experience;
* The top bar is transparent when no window is maximised (starting from GNOME Shell 3.26, but disabled in GNOME Shell 3.32 due to upstream changes);
* Open Sans is the default font of the theme; and
* Other minor changes and fixes.

The latest version features the redesign of running-app indicators for dash and dash-to-dock (See Screenshot).

The theme includes three variants:

* **Dark** title bar and **light** window's background (Flat-Plat-Blue)
* **Light** title bar and **light** window's background (Flat-Plat-Blue-Light)
* **Dark** title bar and **dark** window's background (Flat-Plat-Blue-Dark)

Each variant comes with **normal** and **compact** themes for different screen sizes.

*(Scroll down for screenshots)*

### The Origin Story

I forked and modified the [Flat-Plat Theme](https://github.com/nana-4/Flat-Plat) for personal use, but I reckoned there were people out there who wanted a [colour scheme that was more comfortable to look at](https://github.com/nana-4/Flat-Plat/issues/19), so I put together the theme and release it. You are welcomed to fork it and make further modifications yourself.


## Download

* [Flat-Plat-Blue for GNOME 3.32/ 3.30 /3.28 / 3.26 / 3.24 / 3.22](https://github.com/peterychuang/Flat-Plat-Blue/archive/3.32.0.tar.gz)

## Requirements

- GTK `>=3.20`
- `gnome-themes-extra` (or `gnome-themes-standard`)
- Murrine engine — The package name depends on the distro.
  - `gtk-engine-murrine` on Arch Linux
  - `gtk-murrine-engine` on Fedora
  - `gtk2-engine-murrine` on openSUSE
  - `gtk2-engines-murrine` on Debian, Ubuntu, etc.
- `glib-compile-resources` - The package name depends on the distro.
  - `glib2` on Arch Linux
  - `glib2-devel` on Fedora, openSUSE, etc.
  - `libglib2.0-dev` on Debian, Ubuntu, etc.

For Ubuntu, you'll also need the `libxml2-utils` package.

## Installation

### Arch Linux

Arch Linux users can install Flat-Plat-Blue theme by installing [```flatplat-blue-theme```](https://aur.archlinux.org/packages/flatplat-blue-theme/) package via AUR, coutesy of [@elementh](https://github.com/elementh).

### Manual Installation

#### GNOME Shell/GTK Theme install
- Download the archive of the theme
- Extract the files from the archive
- In your terminal, enter the directory of the extracted theme, then issue the following command:

```
sudo sh install.sh
```

- Use GNOME Tweak Tool to enable both the GTK+ Theme and the GNOME Shell Theme

#### GDM (Lock/Login Screen)
- Backup ```/usr/share/gnome-shell/gnome-shell-theme.gresource```
- In your terminal, enter the directory of the extracted theme, then issue the following command:

```
sudo sh install.sh --gdm
```

- Restart your GNOME session. On X.Org, press ```Alt``` + ```F2```, then type ```r``` and ```Enter```. On Wayland, you may need to logout and log back in to see the change take effect.

#### Google Chrome Theme
- On Google Chrome, go to ```chrome://extensions```
- In your file manager to ```src/chrome``` inside the theme's directory, then drag your preferred theme to Google Chrome
- Follow the instructions on Google Chrome


## Screenshots
*(click to enlarge)*

<a href="https://novelist.xyz/assets/img/Screenshot1.jpg"><img src="https://novelist.xyz/assets/img/Screenshot1.jpg" style="width:100%"></a>

<a href="https://novelist.xyz/assets/img/Screenshot2.jpg"><img src="https://novelist.xyz/assets/img/Screenshot2.jpg" style="width:100%"></a>

<a href="https://novelist.xyz/assets/img/Screenshot3.jpg"><img src="https://novelist.xyz/assets/img/Screenshot3.jpg" style="width:100%"></a>


## Other Info
* License: GPLv2
* Forked by [Peter Y. Chuang - Novelist](https://novelist.xyz)
* [Source Code on Github](https://github.com/peterychuang/Flat-Plat-Blue)
