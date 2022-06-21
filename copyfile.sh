#!/bin/bash
notify-send Backup "Starting Backup"
currentdatetime=$(date +%d-%m-%Y)
mkdir 'backup'
cd 'backup'
rsync -av --delete ~/Pictures/ ./Pictures/
# rsync -av --delete --exclude ~/Documents/GRE -f"- *.zip" ~/Documents/ ./Documents/
rsync -av --delete -f"+ */" -f"- *.mkv" -f"- *.iso" -f"+ *" ~/Downloads ./
mkdir '.local'
mkdir .local/share/
mkdir .local/share/fonts/
mkdir .local/share/applications/
mkdir .local/share/sbin/
mkdir '.config'
mkdir .config/geary
mkdir backup
rsync -av ~/.zshrc ./
rsync -av ~/.xsettingsd ./
rsync -av --delete ~/.local/share/fonts/ ./.local/share/fonts/
rsync -av --delete ~/.local/share/applications/ ./.local/share/applications/
rsync -av --delete ~/.local/share/sbin/ ./.local/share/sbin/
cp ~/.config/starship.toml ./.config/
cp ~/.config/chrome-flags.conf ./.config/
cp ~/.config/libinput-gestures.conf ./.config/
rsync -av --delete ~/.config/alacritty/ ./.config/alacritty/
rsync -av --delete ~/.config/bspwm/ ./.config/bspwm/
rsync -av --delete ~/.config/aria2/ ./.config/aria2/
rsync -av --delete ~/.config/dunst/ ./.config/dunst/
rsync -av --delete ~/.config/mpv/ ./.config/mpv/
rsync -av --delete ~/.config/neofetch/ ./.config/neofetch/
rsync -av --delete ~/.config/nvim/ ./.config/nvim/
rsync -av --delete ~/.config/picom/ ./.config/picom/
rsync -av --delete ~/.config/polybar/ ./.config/polybar/
rsync -av --delete ~/.config/redshift/ ./.config/redshift/
rsync -av --delete ~/.config/rofi/ ./.config/rofi/
rsync -av --delete ~/.config/solaar/ ./.config/solaar/
rsync -av --delete ~/.config/geary/user-style.css ./.config/geary/user-style.css
rsync -av --delete ~/.config/sxhkd/ ./.config/sxhkd/
rsync -av --delete ~/.config/nitrogen/ ./.config/nitrogen/
rsync -av --delete ~/.config/rclone/ ./.config/rclone/
rsync -av --delete ~/.config/systemd/ ./.config/systemd/
rsync ~/backup/copyfile.sh ./backup/copyfile.sh
rsync ~/backup/setup.sh ./backup/setup.sh
zip -r ~/backup/backup.zip ~/backup/backup/
