#! /bin/bash

i=1
start=$1
sum=0
average=0
highest=$1
lowest=$1

if [ -z "$1" ]; then
    >&2 echo "Give at least 1 number to compute"
    exit 1;
fi

while [ "$start" != "" ];
do
    sum=$(($sum+$i))
    if [ $i > $highest ]; then
        $highest=$i
    fi
    if [ $i < $lowest ]; then
        $lowest=$if
    fi
    shift
    start=$1
    ((i++))
done
((i--))
average=$(($sum/$i))
echo "average = $average, highest = $highest, lowest = $lowest"
