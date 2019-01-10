## DZ60

Switches | Caps | Case | Cable
---------|------|------|------
Zealio 67g | Purple + Black DSA custom set | KBDFans 5deg Grey | ZapCables MDPC-X Vivid Violet

### Flashing

Build all firmware with `./build_firmwares.sh`

Ensure `dfu-programmer` is available on `$PATH`

1. Build all keyboard firmware with `./build_firmwares.sh`
2. Enter bootloader (hold spacebar + b when plugging in)
3. `./flash_dz60.sh`

## Whitefox

Switches | Caps | Case | Cable
---------|------|------|------
Cherry MX Clear | Canvas XDA (betas + bauhaus + icons) | Stock Silver Aluminium | Stock Whitefox

Ensure `dfu-util` is available on `$PATH`

### Flashing

1. Build all keyboard firmware with `./build_firmwares.sh`
2. Enter flashing mode on Whitefox Keyboard
3. `sudo dfu-util -D build/whitefox_jackcuthbert.bin`
