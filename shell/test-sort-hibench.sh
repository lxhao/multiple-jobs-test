#!/bin/sh
cd /yarn-test/
HiBench/bin/workloads/micro/sort/prepare/prepare.sh
starttime=`date +'%Y-%m-%d %H:%M:%S'`
HiBench/bin/workloads/micro/sort/hadoop/run.sh
endtime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "Test cost time:"$((end_seconds-start_seconds))"s"
