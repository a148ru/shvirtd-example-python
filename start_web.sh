#!/bin/bash

echo "waitin 10 seconds db"
sleep 5

HOST=172.20.0.10
PORT=3306


count=0
while [ -z $(echo "" > /dev/tcp/$HOST/$PORT && echo "Opened" || echo "Closed" | grep Opened) ] && [ $count != 10 ]
do
sleep 5
count=$((count+1))
done

# run app
exec python3 ./main.py