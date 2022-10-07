#!/bin/bash

#curl -G -f -L -# http://source.unsplash.com/random/3840x2160 -o /tmp/wallpaper.png
curl -G -f -L -# 'https://bing.biturl.top/?resolution=3840&format=image&index=0&mkt=ja-JP' -o /tmp/wallpaper.png

#convert /tmp/wallpaper.png -filter Gaussian -blur 0x16 /tmp/wallpaper.png

swaymsg 'output "*" bg /tmp/wallpaper.png fill'
