#!/bin/bash

KBDCFG=$(envsubst < "/home/bo/code/kmonad-contrib/keymaps/topherbuckley/config.kbd")

echo "KBDCFG: $KBDCFG"

kmonad <(echo "$KBDCFG") > /dev/null
