#!/bin/bash


declare -a slaves=("slave17" "slave18")
for i in "${slaves[@]}"
do

ssh se@"$i" <<ENDSSH
cd /usr/local/BDA/hadoop/etc/hadoop
echo | pwd
echo | rm hdfs-site.xml
echo | rm yarn-site.xml
echo "hdfs & yarn deleted"
echo | wget https://raw.githubusercontent.com/baraniv/Block-Replica-Worker/master/64-1-2/hdfs-site.xml
echo | wget https://raw.githubusercontent.com/baraniv/Block-Replica-Worker/master/64-1-2/yarn-site.xml
echo "hdfs & yarn added"
ENDSSH

done

#echo | wget https://raw.githubusercontent.com/baraniv/codes/master/ganglia1.sh

#ssh arsan@slave <<ENDSSH
#echo | mkdir ~/Desktop/fuck.txt
#echo | rm -r ~/Desktop/fuck.txt
#ENDSSH

#echo | mkdir ~/Desktop/fuck.txt
#echo | rm -r ~/Desktop/fuck.txt

#declare -a words=("hello" "word")
#for i in "${words[@]}"
#do 
#    echo "$i"

#done
