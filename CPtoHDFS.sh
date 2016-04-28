#!/bin/bash
#"slave17" "slave19"

declare -a slaves=("slave18")
for i in "${slaves[@]}"
do

ssh se@"$i" <<ENDSSH

/usr/local/BDA/hadoop/bin/hadoop fs -copyFromLocal /usr/local/BDA/BigDataBench_V3.1_Hadoop_Hive/MicroBenchmarks/data-MicroBenchmarks/in hdfs://slave12:54310/HD1/data-MicroBenchmarks/in

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
