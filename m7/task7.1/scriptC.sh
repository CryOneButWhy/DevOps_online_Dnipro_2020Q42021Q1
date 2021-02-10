#!/bin/bash
#Backup script
#check if destination folder exists or not empty - will not create initial backup
if [[ -d $2 ]]
then
:
  #"The $2 directory exists, no initial backups will be made"
else
  #"Creating directory $2"
  mkdir -p $2
  cd $1
  #"Copying files from  $1 directory"
  for file in *
  do
    cp -R $file $2/$file
  done
  #log entires
  echo "$(date) : Initial Copies are uploaded to $2" > /home/vlados/Backup_script_log
fi
#It should check ctime for file. Will locate files created less than minute ago
cd $1
new=$(find . -cmin -1)
if [[ -z $new ]]
then
  #"No new files"
  exit 0
else
echo " $(date): Located files created less than 1 minute ago: $new " > /home/vlados/Backup_script_log
cp -R $new $2
echo "New files are copied to $2" >> /home/vlados/Backup_script_log
fi
