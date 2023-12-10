#!/bin/bash

RACKET=/Applications/Racket/bin/racket
BENCHMARKS=results

cd $BENCHMARKS

for bench in ./*.rkt; do
	name=${bench%.*}
	echo "$name"
	echo "$name" >> rerolling-results.log
	{ time $RACKET $bench ; } 2>> rerolling-results.log 1> $name.py
    echo -n "Loops rerolled: " >> rerolling-results.log
    grep -c "for t" ${name}.py >> rerolling-results.log
	echo "" >> rerolling-results.log
done
