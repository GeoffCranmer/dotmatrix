#!/usr/bin/env bash

# Docker Clean
# Remove all stopped containers and delete all images to recover disk space used by Docker

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

# Remove all stopped containers
docker rm $(docker ps -aq)

# Remove all images
docker rmi $(docker images -aq)
