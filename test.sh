#!/usr/bin/env bash

# Configs
title='E'
code="2018/E/E.py"
input_dir="2018/E/input"
output_dir="2018/E/output"

file_count=$(ls $input_dir | wc -l)

for ((l=1;l<=file_count;l++))
do
	if [ "$(python $code < $input_dir/$title'_'$l)" -eq "$(cat $output_dir/$title'_'$l)" ]; then
		echo "$l Valid"
	else
		echo "$l Invalid"
	fi
done
