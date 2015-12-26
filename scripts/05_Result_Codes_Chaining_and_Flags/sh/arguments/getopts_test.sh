#!/bin/sh

while getopts ":lt:p:u:" opt; do
	case $opt in
		l) echo "found option -l, enabled logging" ;;
		t) echo "found option -t and arg ,timeout = $OPTARG";;
		p) echo "found option -p and arg, proxy = $OPTARG" ;;
    	u) echo "found option -u and arg, url = $OPTARG" ;;
		\?) echo 'Unknown option -$OPTARG'
			echo 'Usage: ./args_parse.sh [-l] [-t timeout] [-p proxy] [-u url] FILE DIR'
			exit 1 ;;
		\:) echo 'Miss argument for -$OPTARG'
			exit 1 ;;
	esac
done 

#echo 'OPTIND=${OPTIND}'
echo OPTIND=$OPTIND
shift $(($OPTIND - 1))

echo "file=$1"
echo "dir=$2"