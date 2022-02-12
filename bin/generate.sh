#!/bin/bash

#    ___ ___ _____   _   _           _                   
#   |_ _/ _ \_   _| | | | | ___  ___| |_ __ _  __ _  ___ 
#    | | | | || |   | |_| |/ _ \/ __| __/ _` |/ _` |/ _ \
#    | | |_| || |   |  _  | (_) \__ \ || (_| | (_| |  __/
#   |___\___/ |_|   |_| |_|\___/|___/\__\__,_|\__, |\___|
#                                             |___/      
# Blocks IOT devices from calling home


arrVar=("iot-hostage")

# Add new element at the end of the array
arrVar+=("tplink")
arrVar+=("dahua")

# Iterate the loop to read and print each array element
for value in "${arrVar[@]}"
do
sed -e '/^#/d' ../devices/$value.hosts.txt >> ../iot.hosts.txt
     echo $value
done