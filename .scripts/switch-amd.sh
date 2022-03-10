#!/bin/sh
sudo mv /etc/X11/xorg.conf.d/10-nvidia-drm-outputclass.conf /etc/X11/xorg.conf.d/10-nvidia-drm-outputclass.conf.nvidia
sudo mv /etc/X11/xorg.conf.d/20-amdgpu.conf.amd /etc/X11/xorg.conf.d/20-amdgpu.conf
mv /home/siutson/.xinitrc /home/siutson/.xinitrc.nvidia
mv /home/siutson/.xinitrc.amd /home/siutson/.xinitrc
mv /home/siutson/.config/alacritty/alacritty.yml /home/siutson/.config/alacritty/alacritty.yml.nvidia
mv /home/siutson/.config/alacritty/alacritty.yml.amd /home/siutson/.config/alacritty/alacritty.yml
reboot
