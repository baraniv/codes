#!/bin/bash


declare -a slaves=("slave")
for i in "${slaves[@]}"
do

ssh arsan@"$i" <<ENDSSH
echo | mkdir ~/Desktop/fuck.txt
cd /usr/local/hadoop/TEST
echo | pwd
echo | rm ganglia1.sh
echo | wget https://raw.githubusercontent.com/baraniv/codes/master/ganglia1.sh
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
