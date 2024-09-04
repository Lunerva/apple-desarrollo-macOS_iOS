#!/usr/bin/env bash
x=987
echo "prueba script $x"

count(){
	for i in `seq $1`; do
		echo "i = $i"
	done
}

count 15
