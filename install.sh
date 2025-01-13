#! /usr/bin/env bash

# Firstly install eget to install other dependencies directly from github as binaries
curl https://zyedidia.github.io/eget.sh | sh

mkdir -p ~/.local/bin
mv eget ~/.local/bin

# Swap to zsh
chsh $(whoami) -s $(which zsh)

# Install oh-my-zsh, if it is already installed in the devcontainer then this will be a noop
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes

# Install utilties
eget -q --to ~/.local/bin https://github.com/sharkdp/fd
eget -q --to ~/.local/bin https://github.com/BurntSushi/ripgrep
eget -q --to ~/.local/bin https://github.com/eza-community/eza
eget -q --to ~/.local/bin https://github.com/jqlang/jq
eget -q --to ~/.local/bin https://github.com/junegunn/fzf
eget -q --to ~/.local/bin https://github.com/dandavison/delta

# Try helix as an editor as a easy install alternative to neovim
eget -q --to ~/.local/bin https://github.com/helix-editor/helix

# Install zoxide
eget -q --to ~/.local/bin https://github.com/ajeetdsouza/zoxide

# Install jq
eget -q --to ~/.local/bin https://github.com/jqlang/jq

# Source our last.zshrc file
echo "source ~/.dotfiles/last.zshrc" >> ~/.zshrc
