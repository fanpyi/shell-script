#!/bin/sh

cd gitlab/ConsumerApp

for path in `find Beequick | grep -E '.*\.[hm]'`; do
	 s=`echo $path | awk -F '/' '{print $NF}' | grep -E '^BQ.*\.[hm]'` 
	 len=${#s}
	 if [[ $len != 0 ]]; then
	 	cat $path | while read line; do
	 		l=`echo $line | grep 'assign'`
	 		if [[ $line == '@end' ]] || [[ $line == "@implementation" ]]; then
	 			break
	 		else 
	 			len=${#l}
	 			if [[ $len != 0 ]]; then
	 				echo "${line}:--------------------$s" >> ~/Desktop/analyse.text
	 			fi
	 		fi
	 	done
	 fi
done

