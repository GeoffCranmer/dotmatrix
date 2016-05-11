#!/usr/bin/env bash

# Check for Open Files
# Device or resource busy? Find the culprit.

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

PATH=$1

lsof +D $PATH
