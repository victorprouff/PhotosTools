#!/bin/bash

cd ./row

counter=0
for rowFileName in `ls .`
do
    if [ -f $rowFileName ]
    then
        jpgFileName="${rowFileName/.RAF/}.JPG"
        mavar=$(find ../jpg -name "$jpgFileName" -type f | wc -l)

        if [ $mavar != 1 ]
        then
            counter=$((counter+1))
            rm $rowFileName
        fi
    fi
done

echo "Synchro terminé. $counter fichiers supprimés"