#!/usr/bin/env bash

# This script copies all contents of a directory that have been modified within 
# 24 hours

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

SOURCE=$1
TARGET=$2

find $SOURCE -mtime 0 -exec cp --parents {} $TARGET \;

