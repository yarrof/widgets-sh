#!/bin/bash
#head -n 2 /proc/meminfo
free -h | tail -n +2 | head -n +1 | while IFS=" " read mem tot use free rest
do
echo "You have $free free memory of the total $tot available."
done