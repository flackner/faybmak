#!/bin/sh

sed -i '/faybmak/,$d' /usr/share/X11/xkb/symbols/us
cat faybmakXkbSymbols.txt >> /usr/share/X11/xkb/symbols/us

# run setxkbmap us faybmak

