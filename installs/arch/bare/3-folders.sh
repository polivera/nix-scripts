#!/usr/bin/bash

# Customization section
HOME_FOLDER_ROOT=/mnt/data/pablo/home
# When you finish setting your config, comment the next line
echo "Remember to edit the config!"; exit 1
# End customization section

[[ ! -d "$HOME_FOLDER_ROOT" ]] && mkdir $HOME_FOLDER_ROOT
[[ ! -d "$HOME_FOLDER_ROOT/Documents" ]] && mkdir $HOME_FOLDER_ROOT/Documents
[[ ! -d "$HOME_FOLDER_ROOT/Downloads" ]] && mkdir $HOME_FOLDER_ROOT/Downloads
[[ ! -d "$HOME_FOLDER_ROOT/Music" ]] && mkdir $HOME_FOLDER_ROOT/Music
[[ ! -d "$HOME_FOLDER_ROOT/Pictures" ]] && mkdir $HOME_FOLDER_ROOT/Pictures
[[ ! -d "$HOME_FOLDER_ROOT/Templates" ]] && mkdir $HOME_FOLDER_ROOT/Templates
[[ ! -d "$HOME_FOLDER_ROOT/Videos" ]] && mkdir $HOME_FOLDER_ROOT/Videos
[[ ! -d "$HOME_FOLDER_ROOT/.ssh" ]] && mkdir $HOME_FOLDER_ROOT/.ssh
[[ ! -d "$HOME_FOLDER_ROOT/.local/share/themes" ]] && mkdir -p $HOME_FOLDER_ROOT/.local/share/themes
[[ ! -d "$HOME_FOLDER_ROOT/.local/share/icons" ]] && mkdir -p $HOME_FOLDER_ROOT/.local/share/icons

if [[ $HOME_FOLDER_ROOT != "$HOME" ]]; then
  ln -s "$HOME_FOLDER_ROOT/Documents" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/Downloads" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/Music" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/Pictures" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/Templates" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/Videos" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/.ssh" "$HOME"
  ln -s "$HOME_FOLDER_ROOT/.local/share/themes" "$HOME/.local/share"
  ln -s "$HOME_FOLDER_ROOT/.local/share/icons" "$HOME/.local/share"
fi
