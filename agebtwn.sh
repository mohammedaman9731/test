#!/bin/bash

sed '1d' $1 >> temp2
 while read line
do
age=`echo $line | awk -F " " '{print $3}'`
if [ $age -ge 30 ] && [ $age -le 50 ];then
echo $line | awk -F " " '{print $1}'
fi
done < temp2
rm temp2
