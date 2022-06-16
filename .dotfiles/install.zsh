#!/bin/zsh

# Install Brew Packages
brew bundle

# Install Antidote
[[ -e ~/.antidote ]] || git clone https://github.com/mattmc3/antidote.git ~/.antidote
. ~/.antidote/antidote.zsh

# Antidote Plugin Requirements
[[ -e ~/.zshrc.d ]] || mkdir ~/.zshrc.d

# Install Antidote Plugins
antidote bundle <./.zsh_plugins.txt >~/.zsh_plugins.zsh

# Install Source Antidote
grep -qxF '. ~/.antidote/antidote.zsh' ~/.zshrc || echo '\n. ~/.antidote/antidote.zsh' >> ~/.zshrc
grep -qxF 'antidote load' ~/.zshrc || echo 'antidote load' >> ~/.zshrc

# Install Fuzzy Finder
$(brew --prefix)/opt/fzf/install --all \
    --key-bindings --completion --no-update-rc

# Install Source Fuzzy Finder
grep -qxF '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' ~/.zshrc || echo '\n[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' >> ~/.zshrc

# Install VSCode Extensions
grep -e '^[^#]' .vscode_extensions.txt | xargs -I % code --install-extension %
