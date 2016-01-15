#!/bin/bash
sudo ifconfig wlan0 down
sudo ifconfig wlan0 up
airmon-ng start wlan0
wait
counter=0
while [ $counter -lt 1 ]; do 
timeout -s SIGINT 10 airbase-ng --essid "First line of Ad" -c 6 -P -C 3 -I 3000 wlan0mon
timeout -s SIGINT 10 airbase-ng --essid "Second Line of Ad" -c 6 -P -C 3 -I 3000 wlan0mon
timeout -s SIGINT 10 airbase-ng --essid "Third Line of Ad" -c 6 -P -C 3 -I 3000 wlan0mon
timeout -s SIGINT 10 airbase-ng --essid "Fourth Line of Ad" -c 6 -P -C 3 -I 3000 wlan0mon
done
