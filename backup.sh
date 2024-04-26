#!/bin/bash
#
#
#Author: Vaibhav
#Date: 15/04/2024
#
#
#Script to create backup of files(internally)
#
source_dir=/home/kali/scripts/source_dir #giving path to source file
backup_dir=/home/kali/scripts/backup_dir #giving path to backup file

mkdir -p "$backup_dir" #to create backup directory if it does not already exists

files_to_backup=("file1.txt" "file2.txt" "file3.txt") #internal addition of files

#for loop

for item in "${files_to_backup[@]}";
do
        #checking if given files actually exists in the source folder
    if [ -e "$source_dir/$item" ]; then
        # Copy the item to the backup directory
        cp -r "$source_dir/$item" "$backup_dir"
        echo "Backup of $item created into $backup_dir"
    else
        echo "No such file $item exists in source directory. Skipping Backup"
    fi
done

echo "Backup Process Completed!!"

