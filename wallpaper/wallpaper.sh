#!/bin/bash

#curl -G -f -L -# http://source.unsplash.com/random/3840x2160 -o /tmp/wallpaper.png
curl -G -f -L -# 'https://bing.biturl.top/?resolution=1920&format=image&index=0&mkt=en-UK' -o /tmp/wallpaper.png

#convert /tmp/wallpaper.png -filter Gaussian -blur 0x16 /tmp/wallpaper.png

swaymsg 'output "*" background /tmp/wallpaper.png fill'
