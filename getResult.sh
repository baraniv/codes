#!/bin/bash/

cd /usr/local/BDA/Results

wget -O result1 "http://master/ganglia/graph.php?r=hour&title=&vl=&x=&n=&hreg[]=slave12%7Cslave18%7Cslave17&mreg[]=%5B%5Cs%5CS%5D%2A&gtype=line&glegend=show&aggregate=1&embed=1&_=1461876072738&csv=1"
