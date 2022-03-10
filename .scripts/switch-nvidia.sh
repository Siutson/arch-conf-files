#!/bin/sh
sudo mv /etc/X11/xorg.conf.d/10-nvidia-drm-outputclass.conf.nvidia /etc/X11/xorg.conf.d/10-nvidia-drm-outputclass.conf
sudo mv /etc/X11/xorg.conf.d/20-amdgpu.conf /etc/X11/xorg.conf.d/20-amdgpu.conf.amd
mv /home/siutson/.xinitrc /home/siutson/.xinitrc.amd
mv /home/siutson/.xinitrc.nvidia /home/siutson/.xinitrc
mv /home/siutson/.config/alacritty/alacritty.yml /home/siutson/.config/alacritty/alacritty.yml.amd
mv /home/siutson/.config/alacritty/alacritty.yml.nvidia /home/siutson/.config/alacritty/alacritty.yml
reboot
