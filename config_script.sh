#!/bin/bash
echo intalling x server
sh install_xserver.sh
echo cloninig cub3d repository
git clone git@github.com:ancarvaj/cub3d.git cub
echo setting variable DISPLAY=:0
export DISPLAY=:0
xhost +SI:localuser:root
docker compose up
