#!/bin/bash

KBD_DEV=$(find /dev/input/by-id/*kbd* | fzf)
export KBD_DEV
KBDCFG=$(envsubst < "/home/bo/code/kmonad-contrib/keymaps/topherbuckley/config.kbd")

echo "KBD_DEV: $KBD_DEV"
echo "KBDCFG: $KBDCFG"

kmonad <(echo "$KBDCFG") > /dev/null
