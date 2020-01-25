#!/usr/bin/env bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


COMPUTER_NAME="${1:-monolith}"
echo -e "${GREEN}Will setup new computer with name: ${BLUE}${COMPUTER_NAME}${NC}"

# Install brew
echo -e "${GREEN}Installing brew${NC}"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Passwordless sudo
echo -e "${GREEN}Set passwordless sudo${NC}"
echo "$(whoami)            ALL = (ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/$(whoami)"

# Install applications
echo -e "${GREEN}Installing brew applications${NC}"
./brew.sh

echo -e "${GREEN}Installing nvm${NC}"
./node.sh
#./other.sh

echo -e "${GREEN}Installing ZSH stuff${NC}"
./zsh.sh

echo -e "${GREEN}Customizing OS${NC}"
./macos.sh "${COMPUTER_NAME}"

# Symlink dot-files
echo -e "${GREEN}Symlinking dotfile repo files${NC}"
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done

# Symlink .vim
ln -fs "$(pwd {BASH_SOURCE[0]})/.vim" ~/.vim;

# iTerm2
ln -s "$(pwd {BASH_SOURCE[0]})/iterm2/anders.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/anders.json" 

# VSCode
ln -s "$(pwd {BASH_SOURCE[0]})/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json" 

# Install vs code extensions
./vscode/extensions.sh

echo "Reboot :)"

