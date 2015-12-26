#!/bin/sh

cd gitlab/ConsumerApp

for path in `find Beequick | grep -E '.*\.[hm]'`; do
	 s=`echo $path | awk -F '/' '{print $NF}' | grep -E '^BQ.*\.[hm]'` 
	 if [[ x$s != x ]]; then
	 	cat $path | while read line; do
	 		l=`echo $line | grep 'assign'`
	 		if [[ $line == '@end' ]] || [[ $line == "@implementation" ]]; then
	 			break
	 		else 
	 			if [[ x$l != x ]]; then
	 				echo "${line}:--------------------$s" >> ~/Desktop/analyse.text
	 			fi
	 		fi
	 	done
	 fi
done

