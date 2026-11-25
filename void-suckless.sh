# Wellcom to VOID SUCKLESS

## Part 1:
echo "Updating The System"
doas xbps-install -S
doas xbps-install -uy xbps
doas xbps-install -Suy

## Part 2:
echo "Installing The Necessary Things"
doas xbps-install -Sy base-devel xorg libXft-devel libX11-devel libXinerama-devel\
	git alsa-utils chromium htop mpv feh terminus-font noto-fonts-cjk\
	noto-fonts-emoji noto-fonts-ttf

## Part 3:
echo "Setting up The Suckless DE"
mkdir suckless
cd suckless/
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
cd dwm/
make
doas make clean install
cd ..
cd st/
make
doas make clean install
cd ..
cd dmenu/
make
doas make clean install
cd

## Part 4:
touch ~/.xinitrc
echo "exec dwm" >> .xinitrc
echo "startx" >> .bash_profile

echo "The System is Going to Reboot"
doas reboot
