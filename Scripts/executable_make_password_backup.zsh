#!/bin/zsh

#creates the 7z file 
7z a ~/Desktop/output.7z ~/Documents/backups/backups-encrypted-vault 


#encodes image with said file
~/Documents/backups/steganography encode -i ~/Documents/backups/fruits/fruits4x.png -e ~/Desktop/output.7z -o ~/Desktop/fruits.png -p miacpalmer11262005

#gets date for archiving backup images
now=$(date +%m-%d-%Y)

#copies image with date for full backup
cp ~/Desktop/fruits.png ~/Documents/backups/backup-images/fruits_$now.png

#copy/move image to cloud
rclone copy ~/Desktop/fruits.png remote_onedrive:/backup-image/ --include "*.png"
rclone copy ~/Desktop/fruits.png remote_dropbox:/backup-image/ --include "*.png"
rclone move ~/Desktop/fruits.png remote_gdrive:/backup-image/ --include "*.png"

#backup all versions folder to GDrive
rclone --include "*.png" copy ~/Documents/backups/backup-images remote_gdrive:/full-backup-images --ignore-existing

#removes 7z file
rm -r ~/Desktop/output.7z

exit 0
