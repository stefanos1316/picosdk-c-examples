#!/bin/bash

if [ $1 == "start"  ]; then
	rm ./test.out

	checkIfRunning=$(ps -aux | grep './ps3000Con S' | wc -l)
	if [ $checkIfRunning -eq 2 ]; then
		echo 'ps3000 did not exited normally, killing it now...'
		kill -9 $(ps -aux | grep './ps3000Con S' | head -1 | awk '{print $2}')
	fi

	echo -ne "\n" | ./ps3000Con S &
	sleep 2.5
	#node /home/sgeorgiou/GitHub/Rosetta_Code_Data_Set/tasks/exponentiation-operator/javascript/exponentiation-operator.js
	#pid=$(ps -aux | grep './ps3000Con S' | head -1 | awk '{print $2}')
	#echo -ne "\n" > /proc/$pid/fd/0
fi

if [ $1 == "stop" ]; then
	pid=$(ps -aux | grep './ps3000Con S' | head -1 | awk '{print $2}')
	echo -ne "\n" > /proc/$pid/fd/0
fi

exit
