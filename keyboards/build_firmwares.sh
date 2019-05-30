#!/bin/sh
set -e

# config
USERNAME=jackcuthbert
DZ60_PATH="qmk_firmware/keyboards/dz60/keymaps/$USERNAME/"
WHITEFOX_PATH="qmk_firmware/keyboards/whitefox/keymaps/$USERNAME/"

# How to bash pls?
# This likely isn't super reliable but this script should only be run within the
# `keyboards` directory
if [[ $PWD != *"keyboards"* ]]; then
  echo "Run this from within the keyboards/ directory"
  exit 1
fi

function clean_build_dir {
  rm -rf ./build
  mkdir -p ./build
}

function copy_keymaps {
  mkdir -p $DZ60_PATH
  mkdir -p $WHITEFOX_PATH

  # copy keymaps to firmware path
  cp keymaps/dz60.c "$DZ60_PATH/keymap.c"
  cp keymaps/whitefox.c "$WHITEFOX_PATH/keymap.c"

  echo "DZ60 keymap saved to $DZ60_PATH$(ls $DZ60_PATH)"
  echo "Whitefox keymap saved to $WHITEFOX_PATH$(ls $WHITEFOX_PATH)"
  sleep 3
}

function build_whitefox {
  cd qmk_firmware

  sudo ./util/docker_build.sh whitefox:$USERNAME
  echo "Whitefox firmeware built!"

  cd ..

  sleep 3
}

function build_dz60 {
  cd qmk_firmware

  sudo ./util/docker_build.sh dz60:$USERNAME
  echo "DZ60 firmeware built!"

  cd ..

  sleep 3
}

function cleanup_paths {
  rm -rf $WHITEFOX_PATH
  rm -rf $DZ60_PATH
}

# script go!
clean_build_dir
copy_keymaps
build_dz60
build_whitefox
cleanup_paths
