#!/usr/bin/env bash

usage() {
    echo "./trust-key.sh <KEY>"
    echo "./trust-key.sh 4209170B # Trusts Magnus Therning's key"
}

[[ $# -ne 1 ]] && { usage; exit 1; }
[[ $UID -ne 0 ]] && { echo "Run as root"; exit 2; }

key="$1"

pacman-key -r "$key"
pacman-key --lsign-key "$key"
