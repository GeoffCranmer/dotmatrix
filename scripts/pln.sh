#!/usr/bin/env bash

# Pattern Link
# This script creates symbolic links using a pattern specified as an argument.

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

SOURCE=$1
TARGET=$2

for FILE in $SOURCE*; do
  ln -s "$FILE" $(echo "$FILE" | sed "s/$SOURCE/$TARGET/");
done

