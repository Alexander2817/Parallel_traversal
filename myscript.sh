#!/bin/bash
#SBATCH --job-name=graph_crawler
#SBATCH --partition=Centaurus
#SBATCH --time=01:00:00
#SBATCH --mem=32G
#SBATCH --output=slurm_output.txt

sequential_output="sequential_results.txt"
parallel_output="parallel_results.txt"
final_output="output_files.txt"

for depth in {1..7}; do
    echo "Running Depth $depth for level_client..." >> $sequential_output
    (time ./level_client "Tom%20Hanks" $depth) >> $sequential_output 2>&1
    echo "" >> $sequential_output

    echo "Running Depth $depth for par_level_client..." >> $parallel_output
    (time ./par_level_client "Tom%20Hanks" $depth) >> $parallel_output 2>&1
    echo "" >> $parallel_output

done

cat $sequential_output $parallel_output >> $final_output

