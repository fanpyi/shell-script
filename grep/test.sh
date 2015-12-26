#!/bin/bash
cat num.txt | while read line; do
	s=`echo $line | grep -E 'hellossss'`
	if [[ x$s != x ]]; then
		echo "s=$s"
	fi
done

if [[ $flag == 1 ]]; then
	echo 'exsit hellossss'
else 
	echo 'not exsit hellossss'
fi

echo $?