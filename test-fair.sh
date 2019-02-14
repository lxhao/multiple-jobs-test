#!/bin/sh
cd shell
./fair.sh
/yarn-test/start.sh
starttime=`date +'%Y-%m-%d %H:%M:%S'`
echo "Test cost time:"$((end_seconds-start_seconds))"s"
./test-wordcount.sh&
./test-wordcount2.sh&
./test-grep.sh&
./test-logstat.sh&
./test-logstat2.sh&
./test-logstat3.sh&
./test-wordcount-hibench.sh&
./test-sort-hibench.sh&
wait
endtime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "======> [FAIR] All Test cost time:"$((end_seconds-start_seconds))"s"
/yarn-test/stop.sh
