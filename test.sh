#!/bin/bash
#
# Once run the script, no need to run ./install.sh for testing. ;)
# Without an argument, this will install only normal variant.
# Valid arguments are:
#
#   compact dark dark-compact light light-compact all uninstall
#
# FIXME: `unity` and `xfwm4` are not fully supported for now since `*.svg` link incorrect locales (with '-light' variant).
# FIXME: Multiple arguments should be allowed.

REPO_DIR=$(cd $(dirname $0) && pwd)
SRC_PATH=${REPO_DIR}/src

THEME_NAME=Flat-Plat-Blue.dev
THEMES_DIR=~/.themes

if [[ $(which gnome-shell 2> /dev/null) ]]; then
  GNOME_VERSION_MAJOR=$(gnome-shell --version | cut -d ' ' -f 3 | cut -d . -f 1)
  GNOME_VERSION_MINOR=$(gnome-shell --version | cut -d ' ' -f 3 | cut -d . -f 2)

  if [[ -e ${SRC_PATH}/gnome-shell/${GNOME_VERSION_MAJOR}.${GNOME_VERSION_MINOR} ]]; then
    GNOME_VERSION=${GNOME_VERSION_MAJOR}.${GNOME_VERSION_MINOR}
  elif [[ -e ${SRC_PATH}/gnome-shell/${GNOME_VERSION_MAJOR}.$((${GNOME_VERSION_MINOR} + 1)) ]]; then
    GNOME_VERSION=${GNOME_VERSION_MAJOR}.$((${GNOME_VERSION_MINOR} + 1))
  elif [[ -e ${SRC_PATH}/gnome-shell/${GNOME_VERSION_MAJOR}.$((${GNOME_VERSION_MINOR} - 1)) ]]; then
    GNOME_VERSION=${GNOME_VERSION_MAJOR}.$((${GNOME_VERSION_MINOR} - 1))
  else
    GNOME_VERSION=3.18
  fi
else
  GNOME_VERSION=3.18
fi

test() {
  local color=${1}
  local size=${2}

  [[ ${color} == '-dark' ]] && local ELSE_DARK=${color}
  [[ ${color} == '-light' ]] && local ELSE_LIGHT=${color}

  local THEME_DIR=${THEMES_DIR}/${THEME_NAME}${color}${size}

  mkdir -p                                                                        ${THEME_DIR}
  ln -sfT ${SRC_PATH}/index${color}${size}.theme                                  ${THEME_DIR}/index.theme

  mkdir -p                                                                        ${THEME_DIR}/gnome-shell
  ln -sf  ${SRC_PATH}/gnome-shell/${GNOME_VERSION}/{extensions,pad-osd.css}       ${THEME_DIR}/gnome-shell
  ln -sfT ${SRC_PATH}/gnome-shell/${GNOME_VERSION}/assets${ELSE_DARK}             ${THEME_DIR}/gnome-shell/assets
  ln -sfT ${SRC_PATH}/gnome-shell/${GNOME_VERSION}/gnome-shell${color}${size}.css ${THEME_DIR}/gnome-shell/gnome-shell.css

  mkdir -p                                                                        ${THEME_DIR}/gtk-2.0
  ln -sf  ${SRC_PATH}/gtk-2.0/{apps.rc,hacks.rc,main.rc}                          ${THEME_DIR}/gtk-2.0
  ln -sfT ${SRC_PATH}/gtk-2.0/assets${ELSE_DARK}                                  ${THEME_DIR}/gtk-2.0/assets
  ln -sfT ${SRC_PATH}/gtk-2.0/gtkrc${color}                                       ${THEME_DIR}/gtk-2.0/gtkrc

  mkdir -p                                                                        ${THEME_DIR}/gtk-common
  ln -sf  ${SRC_PATH}/gtk-3.0/gtk-common/assets                                   ${THEME_DIR}/gtk-common

  mkdir -p                                                                        ${THEME_DIR}/gtk-3.0
  ln -sf  ${SRC_PATH}/gtk-3.0/3.18/assets                                         ${THEME_DIR}/gtk-3.0
  ln -sfT ${SRC_PATH}/gtk-3.0/3.18/gtk${color}.css                                ${THEME_DIR}/gtk-3.0/gtk.css
  [[ ${color} != '-dark' ]] && \
  ln -sfT ${SRC_PATH}/gtk-3.0/3.18/gtk-dark.css                                   ${THEME_DIR}/gtk-3.0/gtk-dark.css

  for version in '3.20' '3.22'; do
    mkdir -p                                                                      ${THEME_DIR}/gtk-${version}
    ln -sf  ${SRC_PATH}/gtk-3.0/${version}/assets                                 ${THEME_DIR}/gtk-${version}
    ln -sfT ${SRC_PATH}/gtk-3.0/${version}/gtk${color}${size}.css                 ${THEME_DIR}/gtk-${version}/gtk.css
    [[ ${color} != '-dark' ]] && \
    ln -sfT ${SRC_PATH}/gtk-3.0/${version}/gtk-dark${size}.css                    ${THEME_DIR}/gtk-${version}/gtk-dark.css
  done

  mkdir -p                                                                        ${THEME_DIR}/metacity-1
  ln -sf  ${SRC_PATH}/metacity-1/assets                                           ${THEME_DIR}/metacity-1
  ln -sfT ${SRC_PATH}/metacity-1/metacity-theme-2${ELSE_LIGHT}.xml                ${THEME_DIR}/metacity-1/metacity-theme-2.xml
  ln -sfT ${SRC_PATH}/metacity-1/metacity-theme-3${ELSE_LIGHT}.xml                ${THEME_DIR}/metacity-1/metacity-theme-3.xml

  mkdir -p                                                                        ${THEME_DIR}/unity
  ln -sf  ${SRC_PATH}/unity/{*.svg,*.png,dash-widgets.json}                       ${THEME_DIR}/unity
  ln -sfT ${SRC_PATH}/unity/assets${ELSE_LIGHT}                                   ${THEME_DIR}/unity/assets

  mkdir -p                                                                        ${THEME_DIR}/xfwm4
  ln -sf  ${SRC_PATH}/xfwm4/{*.svg,themerc}                                       ${THEME_DIR}/xfwm4
  ln -sfT ${SRC_PATH}/xfwm4/assets${ELSE_LIGHT}                                   ${THEME_DIR}/xfwm4/assets

  echo Installed to ${THEME_DIR}
}

case "${1}" in
  "")
    test '' ''
    ;;
  compact)
    test '' '-compact'
    ;;
  dark)
    test '-dark' ''
    ;;
  dark-compact)
    test '-dark' '-compact'
    ;;
  light)
    test '-light' ''
    ;;
  light-compact)
    test '-light' '-compact'
    ;;
  all)
    test '' ''
    test '' '-compact'
    test '-dark' ''
    test '-dark' '-compact'
    test '-light' ''
    test '-light' '-compact'
    ;;
  uninstall)
    rm -rf ${THEMES_DIR}/${THEME_NAME}{,-compact,-dark,-dark-compact,-light,-light-compact}
    ;;
  *)
    echo "Invalid argument: ${1}"
    echo "Valid arguments are: compact dark dark-compact light light-compact all uninstall"
    ;;
esac
