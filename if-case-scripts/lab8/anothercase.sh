#!/bin/bash
# Script for modifing and get info of the directory.

# Prompt user for:

read -rp "Enter the PATH of the directory: " dire

if [[ ! -d "$dire" ]]; then
   
    echo "The directory '$dire' not found"
    echo "Example of the input: '/home/user/dev'"
    exit 1
fi

sleep 0.5
echo "Choose an action:"
echo "1) Show the files into directory"
echo "2) Show the used space of the directory"
echo "3) Show the mount point"
echo "4) Show the size only the parent directory"
echo "5) list a tree strucuture this directory"
echo "6) Exit"
read -rp "Enter choice [1-6]: " choice

case "$choice" in
    1)
     	ls ${dire}/
	;;
    2)
        du -sh $dire
        ;;
    3)
        lsblk $dire
        ;;
    4)  
	du -Sh --max-depth=0 $dire
        
        ;;
    5)
	tree $dire
	
	;;
    6)
	echo "Exiting..."
        exit 0    
	;;
    *)
        echo "Invalid choice. Please enter a number between 1 and 6."
        ;;
esac

