#!/bin/bash
#Jamie Biddulph 26/12/2018
#Calculates any swap space in user by current processes
for file in /proc/*/status ; do awk '/VmSwap|Name/{printf $2 " " $3}END{ print ""}' $file; done | sort -k 2 -n -r | tail
