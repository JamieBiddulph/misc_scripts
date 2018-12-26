#!/bin/bash
#Jamie Biddulph 26/12/2018
#Finds files/directories not accessed for 30 days and larger than 100MB and prints to screen
#MUST BE RUN AS ROOT
find /home/* -name '*moodledata*' -atime +30 -size +100M && find /home/* -name '*totaradata*' -atime +30 -size +100M | tail -f
