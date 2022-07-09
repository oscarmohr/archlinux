# archlinux

## Installation
Assuming the archiso was booted on the machine on which Arch Linux is to be installed, follow the following steps in order to clone my system.  

**Absolutely** adapt the `archlinux/install/config_*.json` to your needs!

Connect to the internet, update `archinstall`, clone this repository, run the install script, and reboot into the new system:
```sh
$ iwctl --passphrase <password> station wlan0 connect <network>
$ pacman -S archinstall
$ git clone "https://github.com/oscarmohr/archlinux"
$ sh archlinux/install/install.sh
$ reboot now
```


Then, on the new system:
```sh
$ sudo systemctl enable --now iwd
$ iwctl --passphrase <password> station wlan0 connect <network>
$ git clone "https://github.com/oscarmohr/archlinux"
$ sudo sh archlinux/install/post_install.sh
$ reboot now
```

Done.
