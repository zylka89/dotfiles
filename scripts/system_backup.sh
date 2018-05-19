#/bin/bash
# file system_backup.sh
# date September 2017
# author Adam Zylka
# script backs up whole system excluding a couple of folders
# restore options can be found in linux file on the desktop

sudo rsync -aAXv --delete --exclude="/dev/*" --exclude="/proc/*" --exclude="/sys/*" --exclude="/tmp/*" --exclude="/run/*" --exclude="/media/*" --exclude="/mnt/*" --exclude="swapfile" --exclude="lost+found" --exclude="/home/adam/.cache" / /media/adam/data/system_backup/
