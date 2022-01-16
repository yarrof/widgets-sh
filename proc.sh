#!/bin/bash
model=$(lscpu | awk '/Model name:/{print $3, $4, $5, $6, $7, $8}')
core=$(lscpu | awk '/per socket:/{print $4}')
speed=$(lscpu | awk '/CPU MHz:/{print $3}')
echo "Your CPU's model name is: $model. It has $core core and runs at $speed MHz frequncy"