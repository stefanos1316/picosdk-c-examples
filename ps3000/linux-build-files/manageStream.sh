#!/bin/bash

if [ $1 == "start"  ]; then
	echo -ne "\n" | ./ps3000Con S
fi

if [ $1 == "stop" ]; then
	echo -ne "\n" > /proc/$2/fd/0
fi

exit
