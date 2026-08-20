#!/usr/bin/env bash

read -p "Enter your name: " name
count=3
echo "My name is $name"
echo "My name is ${name}!"

if [ "$count" -gt 10 ]; then
  echo "big"
elif [ "$count" -eq 10 ]; then
  echo "count equals exactly 10"
elif [ "$count" -lt 5 ]; then
  echo "very small"
else
  echo "small"
fi

if [[ -z "$name" ]]; then echo "empty"; fi

if [[ "$name" == "yash" ]]; then echo "match"; else echo "no match"; fi

count=3
while [ $count -lt 5 ]; do
  echo "This is iteration number: $count"
  ((count++))
done

for ((i = 0; i < 5; i++)); do
  echo "This is iteration number: $i"
done

sum=0
for num in {0..4}; do
  echo "This is iteration number : $num"
  ((sum = sum + num))
done
echo "Sum: $sum"

systemctl is-active --quiet nginx
if [ $? -eq 0 ]; then echo "nginx running"; else echo "nginx not running"; fi

date=$(date +%F)
files=$(ls /var/log)

echo "Today's date: ${date}"
echo $files
