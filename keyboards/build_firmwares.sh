#!/bin/sh
# How to bash pls?
# This likely isn't super reliable but this script should only be run within the
# `keyboards` directory
if [[ $PWD != *"keyboards"* ]]; then
  echo "Run this from within the keyboards/ directory"
  exit 1
fi

# update submodules
git submodule sync --recursive
git submodule update --init --recursive

# setup paths
USERNAME=jackcuthbert
DZ60_PATH="qmk_firmware/keyboards/dz60/keymaps/$USERNAME/"
WHITEFOX_PATH="qmk_firmware/keyboards/whitefox/keymaps/$USERNAME/"

mkdir -p $DZ60_PATH
mkdir -p $WHITEFOX_PATH

# copy keymaps to firmware path
cp keymaps/dz60.c "$DZ60_PATH/keymap.c"
cp keymaps/whitefox.c "$WHITEFOX_PATH/keymap.c"

echo "DZ60 keymap saved to $DZ60_PATH$(ls $DZ60_PATH)"
echo "Whitefox keymap saved to $WHITEFOX_PATH$(ls $WHITEFOX_PATH)"
sleep 3

# clean out old builds
rm -rf ./build
mkdir -p ./build

cd qmk_firmware

# build dz60
docker run -e keymap=jackcuthbert -e keyboard=dz60 --rm -v $('pwd'):/qmk:rw edasque/qmk_firmware
cp -r .build/* ../build/
echo "DZ60 firmeware built!"
sleep 3

# build whitefox
docker run -e keymap=jackcuthbert -e keyboard=whitefox --rm -v $('pwd'):/qmk:rw edasque/qmk_firmware
cp -r .build/* ../build/
echo "Whitefox firmeware built!"
sleep 3

# ensure we're back at keyboards/
cd ..

# cleanup
rm -rf $WHITEFOX_PATH
rm -rf $DZ60_PATH
