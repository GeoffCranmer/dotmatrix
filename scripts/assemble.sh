#!/usr/bin/env bash

# Assemble
# This script generates assembly from a C++ source file and writes it to stdout.
# See https://www.youtube.com/watch?v=bSkpMdDe4g4&t=15m6s

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

c++ $1 -O2 -c -S -o - -masm=intel | c++filt | grep -vE '\s+\.'
