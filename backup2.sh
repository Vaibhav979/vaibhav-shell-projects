#!/bin/bash
#
#
#Author: Vaibhav
#Date: 18/04/2024
#
#
#Script to automate backup of files(externally)


echo "Enter the path of source directory"
read source_dir

if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

backup_dir=/home/kali/scripts/backup_dir

echo "Enter files to be backed up"
read -a files_to_backup

for item in "${files_to_backup[@]}";
do
        if [ -e "$source_dir/$item"  ];
        then
                cp -r "$source_dir/$item" "backup_dir"
                echo "Backup of $item created in $backup_dir"
        else
                echo "No such file $item exists in $source_dir"
        fi

done

echo "BackUp Completed"
