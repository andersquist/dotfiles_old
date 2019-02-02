#!/usr/bin/env bash

# Switch to using brew-installed zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;


# Setup prompt
npm install --global pure-prompt

# Docker completions
mkdir -p ~/.zsh/completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/.zsh/completion/_docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion ~/.zsh/completion/_docker-compose
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion ~/.zsh/completion/_docker-machine

mkdir -p ~/.zfunctions

# Symlink prompt-files
for file in kubectl-prompt/*; do
  filename=$(basename $file)
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/.zfunctions/$filename;
done

for file in pure-prompt/*; do
  filename="$(basename $file)"
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/.zfunctions/$filename;
done
