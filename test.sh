#!/usr/bin/env bash

# Configs
title='B'
code="2018/warmup_B/B.py"
input_dir="2018/warmup_B/input"
output_dir="2018/warmup_B/output"

file_count=$(ls $input_dir | wc -l)

for ((l=1;l<=file_count;l++))
do
	if [ "$(python $code < $input_dir/$title'_'$l)" = "$(< $output_dir/$title'_'$l)" ]; then
		printf "%d\tValid\n" "$l"
	else
		printf "%d\tInvalid\n" "$l"
	fi
done
