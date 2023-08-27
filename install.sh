echo "This program installs W8ste's dotfiles"

echo "Updating some stuff..."
clear
sudo pacman -Syu
clear
echo "Installing yay"
sudo pacman -S git base-devel
clear
git clone https://aur.archlinux.org/yay.git
clear
cd yay
echo "Follow the instructions"
makepkg -si
clear
echo "installing packages"
sudo pacman -S i3 alacritty btop dunst flameshot htop kitty lazygit neofetch neovim picom polybar ranger rofi tmux
clear
echo "installing fonts..."
yay -S nerd-fonts
clear
echo "copying configs"
cd ~/dotfiles-not-mine
cp -r alacritty ~/.config/
cp -r btop ~/.config/
sudo mkdir /etc/xdg/dunst
sudo cp  dunst/dunstrc /etc/xdg/dunst/dunstrc
mkdir ~/.config/flameshot
cp  flameshot/flameshot.ini ~/.config/flameshot/flameshot.ini
cp  starship.toml ~/.config/starship.toml
cp -r kitty ~/.config/
cp -r nvim ~/.config/
sudo cp  picom/picom.conf /etc/xdg/picom.conf
sudo cp -r polybar /etc/
cp -r lazygit ~/.config
sudo cp tmux/tmux.conf /etc/tmux.conf
cp -r i3 ~/.config