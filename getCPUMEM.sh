#!/usr/bin/env bash

cpumem(){
for i in `ps -ef | grep $1 | awk '{print $2}'`;
do
	ps -p $i -o %cpu,%mem,cmd --no-header;
done;

for i in `ps -ef | grep $1 | awk '{print $2}'`;
do
	ps -p $i -o %cpu,%mem,cmd --no-header;
done | awk '{CPU+=$1; MEM+=$2}END{print CPU, MEM}';
}

cpumem gatherfacts
