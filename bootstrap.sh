#!/usr/bin/env bash
set -e

echo "== Mousticke Dev Platform :: Linux bootstrap =="

sudo apt update && sudo apt upgrade -y

sudo apt install -y \
  build-essential curl git unzip zip ca-certificates gnupg \
  zsh fzf ripgrep bat eza fd-find git-delta \
  tmux direnv gnupg2 node neofetch

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 24

node -v

npm -v



# Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || true

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || true

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || true

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0 || true

# Dotfiles
cp dotfiles/.zshrc ~/
cp dotfiles/.p10k.zsh ~/
cp dotfiles/.gitconfig ~/
cp dotfiles/aliases.sh ~/

chsh -s $(which zsh)

gpg --full-generate-key
echo "Follow the instructions in the README file to fully configure GPG."

echo "Bootstrap complete. Restart terminal and run Powerlevel10k wizard."
