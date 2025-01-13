#! /usr/bin/env bash

# Firstly install eget to install other dependencies directly from github as binaries
curl https://zyedidia.github.io/eget.sh | sh

chsh $(whoami) -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install utilties
sudo eget -q --to /usr/local/bin https://github.com/sharkdp/fd
sudo eget -q --to /usr/local/bin https://github.com/BurntSushi/ripgrep
sudo eget -q --to /usr/local/bin https://github.com/eza-community/eza
sudo eget -q --to /usr/local/bin https://github.com/jqlang/jq
sudo eget -q --to /usr/local/bin https://github.com/junegunn/fzf
sudo eget -q --to /usr/local/bin https://github.com/dandavison/delta

# Try helix as an editor as a easy install alternative to neovim
sudo eget -q --to /usr/local/bin https://github.com/helix-editor/helix

# Install zoxide
sudo eget -q --to /usr/local/bin https://github.com/ajeetdsouza/zoxide

# Install jq
sudo eget -q --to /usr/local/bin https://github.com/jqlang/jq

# Source our last.zshrc file
echo "source ~/.dotfiles/last.zshrc" >> ~/.zshrc
