# Parallel_traversal
Overview

This project implements a graph traversal program using both sequential and parallel breadth-first search (BFS). It includes:

level_client: A sequential BFS implementation.

par_level_client: A parallel BFS implementation.

Files

level_client.cpp: Implements the sequential graph traversal.

par_level_client.cpp: Implements the parallel graph traversal.

Makefile: Compilation instructions for building the executables.

myscript.sh: A SLURM batch script to automate execution and measure performance.

rapidjson/: Contains the RapidJSON library for JSON parsing.

output_files.txt: Stores combined results from both sequential and parallel executions.

sequential_results.txt: Stores results of sequential BFS execution.

parallel_results.txt: Stores results of parallel BFS execution.

Installation

Clone the repository:

git clone https://github.com/yourusername/graph_crawler.git
cd graph_crawler

Compilation

To build the project, run:

make

This generates the executables:

level_client

par_level_client
