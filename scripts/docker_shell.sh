#!/usr/bin/env bash

# Docker Shell
# Use docker to create a plain Linux shell with nothing installed

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

docker run -it ubuntu

