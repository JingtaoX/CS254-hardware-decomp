#!/bin/bash
#   Usage: ./run-loop-id.sh <benchmarks_list>
# Example: ./run-loop-id.sh BENCHMARKS_SMALL

BLIFS=basejump-netlists
RESULTS=results-large
BENCHMARKS_LIST=$1

[ -d $RESULTS ] && echo "! results dir exists, deleting !" && rm -rf $RESULTS
mkdir $RESULTS

while read benchname; do
        for blif in $BLIFS/$benchname*.blif; do
                name=${blif%.*}
                echo "$name"
                if [[ ! -f $name.rkt ]]; then
		            { time python3 blif-benchmark.py -pyrtl \
                           $blif ; } >> $RESULTS/identification-results-large.log
	              fi
                echo "-----------"
        done
done <$BENCHMARKS_LIST

# Move generated Racket files to results-large folder in /loop-rerolling
[ -d ../loop-rerolling/$RESULTS ] && rm -rf ../loop-rerolling/$RESULTS
mkdir ../loop-rerolling/$RESULTS
mv $BLIFS/*.rkt ../loop-rerolling/$RESULTS/
