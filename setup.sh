nmtui

sudo pacman-mirrors --geoip && sudo pacman -Syyu

sudo pacman -S alacritty bluez-utils brightnessctl bspwm cups cups-pdf dunst geary gnome-font-viewer ripgrep bat python-pip manjaro-refind-installer mpv neovim playerctl npm nodejs polybar power-profiles-daemon rclone sxhkd maim xclip zathua-pdf-mupdf zathua baobab prettier gdb llvm clang libinput-gestures xdotool wireless-tools libreoffice-fresh unoconv polkit-gnome rofi xorg-xsetroot xsettingsd xorg-xset wmname 

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru 
makepkg -si

paru -S google-chrome apple-fonts scrcpy ryzenadj-git teams mongodb-bin mongodb-tools-bin mongodb-compass postman-bin solaar visual-studio-code-bin betterlockscreen picom-ibhagwan-git flutter go maria-db luacheck styllua prettierd  
pip install subliminal
node install -g nodemon

cp -R ./backup/ ~/

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/launch.sh
chmod -R +x ~/.config/polybar/scripts/
chmod +x ~/.local/share/sbin/scrcpy.sh
chmod +x ~/.config/rofi/applets/android/powermenu.sh
chmod +x ~/.config/rofi/launchers/text/launcher.sh
chmod +x ~/.config/rofi/powermenu/powermenu.sh

npm i -g vscode-langservers-extracted
npm i -g bash-language-server
npm install -g typescript typescript-language-server
npm install -g pyright

sudo cat >> /etc/sudoers << EOF
ayush ALL=(ALL) NOPASSWD: /usr/bin/ryzenadj
EOF

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

mkdir github
cd github

git clone "git@github.com:vinceliuice/WhiteSur-gtk-theme.git"
cd WhiteSur-gtk-theme/
./install.sh -c dark -t blue -N glassy
git clone "git@github.com:vinceliuice/Tela-circle-icon-theme.git"
cd ../Tela-icon-theme/
./install.sh -n tela -c blue

cd

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

mv ~/.config/nvim/custom/ ~/.config/nvim/lua/        

systemctl enable betterlockscreen@$USER

mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mysql -u root -p

# CREATE USER 'monty'@'localhost' IDENTIFIED BY 'some_pass';
# MariaDB> GRANT ALL PRIVILEGES ON mydb.* TO 'monty'@'localhost';
# MariaDB> FLUSH PRIVILEGES;
# MariaDB> quit

