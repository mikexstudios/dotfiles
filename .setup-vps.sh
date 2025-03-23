#!/usr/bin/env bash
#  Sets up a remote server with common tools.
set -Eeuo pipefail

sudo apt update && sudo apt full-upgrade

sudo apt install git tmux vim htop mosh

sudo apt install zsh && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ssh-keygen -t ed25519 -C "mikexstudios"