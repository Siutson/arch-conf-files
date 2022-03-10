#!/bin/sh
lspci -nnk | grep -i -EA3 "vga"
glxinfo | grep OpenGL | head -n 2
