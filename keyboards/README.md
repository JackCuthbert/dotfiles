## DZ60

Switches | Caps | Case
---------|------|-----
Zealio 67g | Dark Grey Thick PBT | KBDFans 5deg Grey
  
### Flashing

Build all firmware with `./build_firmwares.sh`

Ensure `dfu-programmer` is available on `$PATH`

1. Build all keyboard firmware with `./build_firmwares.sh`
2. Enter bootloader (hold spacebar + b when plugging in)
3. `sudo dfu-programmer erase --force`
4. `sudo dfu-programmer flash build/dz60_jackcuthbert.hex`
5. `sudo dfu-programmer reset`

## Whitefox

Switches | Caps | Case
---------|------|-----
Cherry MX Clear | Stock Whitefox | Stock Silver Aluminium

Ensure `dfu-util` is available on `$PATH`

### Flashing

1. Build all keyboard firmware with `./build_firmwares.sh`
2. Enter flashing mode on Whitefox Keyboard
3. `sudo dfu-util -D build/whitefox_jackcuthbert.bin`
