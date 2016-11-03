#!/bin/sh
imagePath="images"
if [ -e $imagePath ]
then
    cd $imagePath
    rm -rf *
    cd ..
else
    mkdir $imagePath
fi
ls | grep '.ipa' | while read line; do
	unzip $line
	cd Payload
	appname=`ls`
	cd $appname
	mv `ls| grep -E '.png|.jpg'` ../../$imagePath
	cd ../..
	rm -rf iTunesArtwork iTunesMetadata.plist Payload
done
