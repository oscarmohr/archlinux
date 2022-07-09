#!/bin/sh

# change shell to zsh
chsh -s /usr/bin/zsh

# enable systemd services
systemctl enable --now iwd bluetooth

git clone "https://github.com/oscarmohr/archlinux"

# copy over system
(
  cd archlinux/sys
  cp --recursive --no-clobber -t "$HOME/.config" .config/*
  cp --recursive --no-clobber -t "$HOME/.local"  .local/*
  mkdir "$HOME/.config" "$HOME/.local"
  ln -si "$HOME/.config/zsh/.zprofile" "$HOME/.zprofile"
)

# install paru aur helper
git clone https://aur.archlinux.org/paru.git
(
  cd paru
  makepkg -si
)

# install pacman and paru packages
pacman_packages="$(cat archlinux/install/pacman_packages.txt | tr "\n" " ")"
paru_packages"$(cat archlinux/install/paru_packages.txt | tr "\n" " ")"
pacman -Syyu --noconfirm "$pacman_packages"
paru -S "$paru_packages"

# install window manager
(
  cd "$HOME/.local/src/dwm"
  make
  sudo make install
)
