#!/bin/bash

if [ $1 == "start"  ]; then
	rm ./test.out
	echo -ne "\n" | ./ps3000Con S
fi

if [ $1 == "stop" ]; then
	pid=$(ps -aux | grep './ps3000Con S' | head -1 | awk '{print $2}')
	echo -ne "\n" > /proc/$pid/fd/0
fi

exit
