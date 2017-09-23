## Flat-Plat-Blue Theme

Flat-Plat-Blue Theme is a GNOME Shell/GTK Theme forked from [Flat-Plat Theme](https://github.com/nana-4/Flat-Plat) with the following refinements:

* All coloured elements (e.g. check boxes, sliders, switches, etc) are changed into blue to provide a more consistent and comfortable visual experience;
* The top bar is transparent when no window is maximised (starting from GNOME Shell 3.26);
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

* [Flat-Plat-Blue for GNOME 3.26 / 3.24 / 3.22 / 3.20 / 3.18](https://github.com/peterychuang/Flat-Plat-Blue/archive/3.26.0-2.tar.gz)
* ~~[Flat-Plat-Blue for GNOME 3.22](https://github.com/peterychuang/Flat-Plat-Blue/releases/download/3.22/Flat-Plat-Blue-20161022.tar.gz)~~
* ~~[Flat-Plat-Blue for GNOME 3.20](https://github.com/peterychuang/Flat-Plat-Blue/releases/download/3.20/Flat-Plat-Blue-20160411.tar.gz)~~


## Requirements
* GNOME/GTK+ 3.18 or above
* The `gnome-themes-standard` package for GTK2
* The pixmap (or pixbuf) engine for GTK2
* murrine engine

## Installation

### Arch Linux

Arch Linux users can install Flat-Plat-Blue theme by installing [```flatplat-blue-theme```](https://aur.archlinux.org/packages/flatplat-blue-theme/) package via AUR, coutesy of [@elementh](https://github.com/elementh).

### Manual Installation

#### GNOME Shell/GTK Theme install
- Download [Flat-Plat-Blue for GNOME 3.26/ 3.24 / 3.22 / 3.20 / 3.18](https://github.com/peterychuang/Flat-Plat-Blue/archive/3.26.0-2.tar.gz)
- Extract the files from the archive
- In your terminal, enter the directory of the extracted theme, then issue the following command:

```
sudo sh install.sh
```

- Use GNOME Tweak Tool to enable both the GTK+ Theme and the GNOME Shell Theme

#### GDM (Lock/Login Screen)
- Backup ```/usr/share/gnome-shell/gnome-shell-theme.gresource```
- In your terminal, move into ```/usr/share/themes/Flat-Plat-Blue-{your-preferred-variant}/gnome-shell``` directory, then issue the following command

```
sudo cp gnome-shell-theme.gresource /usr/share/gnome-shell
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
