#!/bin/bash
#Jamie Biddulph 26/12/2018
#Enter the details of a single database to calculate the size
read -p "Enter DB Name: " dbname
read -p "Enter DB User: " dbuser
echo "Enter DB password: "
dbpass=$(systemd-ask-password)
mysql -u ¨${dbuser}¨ -p¨${dbpass}¨ -e "SELECT table_schema "${dbname}",ROUND(SUM(data_length + index_length) / 1024 / 1024, 1) \"DB Size in MB\" FROM information_schema.tables GROUP BY table_schema;"
