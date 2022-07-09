# archlinux

## Installation
Assuming the archiso was booted on the machine on which Arch Linux is to be installed, follow the following steps in order to clone my system.
Adapt the `config_*.json` to your needs.

Connect to the internet using `iwctl` and check connection:
```sh
$ iwctl --passphrase <password> station wlan0 connect <network>
$ ping g.co
```

Update the Arch Linux install script:
```sh
$ pacman -S archinstall
```

Clone this repository, change directory into it, run the install script, and reboot into new Arch Linux System:
```sh
$ git clone "https://github.com/oscarmohr/archlinux"
$ cd archlinux/install
$ sh install.sh
$ reboot now
```
