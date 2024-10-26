#!/bin/bash

echo "waitin 5 seconds db"
sleep 5

# for debug env
if [["$TEST_APP" == "True"]]; then
export DB_HOST=
export DB_USER=
export DB_PASSWORD=
export DB_NAME=

echo $DB_HOST
echo $DB_USER
echo $DB_PASSWORD
echo $DB_NAME
fi

# run app
exec python3 ./main.py
