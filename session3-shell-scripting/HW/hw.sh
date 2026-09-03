#!/bin/bash 

username=$(whoami)
hostname=$(hostname) 
current_date=$(date)

echo "username: $username"
echo "hostname: $hostname"
echo "current date: $current_date" 

echo "Disk usage: $(df -h)" 

echo "Running processes: $(ps -e)" 

read -p "Enter directory name: " dir 

mkdir ~/Documents/$dir 
touch ~/Documents/$dir/file1.txt

echo ps -e > ~/Documents/$dir/file1.txt