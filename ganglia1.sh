#!/bin/bash

cd /usr/local/hadoop/TEST/

wget -O test2.csv "http://master/ganglia/graph.php?r=hour&title=&vl=&x=&n=&hreg[]=slave01&mreg[]=disk&gtype=line&glegend=show&aggregate=1&embed=1&_=1461445510683&csv=1"
