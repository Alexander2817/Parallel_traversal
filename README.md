# Parallel_traversal
Overview

This project implements a graph traversal program using both sequential and parallel breadth-first search (BFS). It includes:

## Requirements

1. **libcurl**: A library for making HTTP requests.
   - On Ubuntu/Debian:
     ```bash
     sudo apt install libcurl4-openssl-dev
     ```
   - On macOS:
     ```bash
     brew install curl
     ```

2. **RapidJSON**: A fast JSON parser for C++.
   - On Mac or Windows install using:
     ```bash
     git clone https://github.com/Tencent/rapidjson.git
     cd rapidjson
     mkdir build && cd build
     cmake ..
     sudo make install
     ```

     If this does not work, you can directly include the RapidJSON headers by specifying the path in your
compilation command. Assuming the cloned folder is in your home directory:

## Compilation

1. Clone the repository
   
2. Update the Makefile RAPIDJSON_PATH to where you cloned rapidjson into.

3. To compile the program, run the following command in the terminal:
   ```bash
   make
   ```
4. To run more tests, edit the nodes or the depth in the myscript.sh file.


## Files

1. **level_client.cpp**: Implements the sequential graph traversal.

2. **par_level_client.cpp**: Implements the parallel graph traversal.

3. **Makefile**: Compilation instructions for building the executables.

4. **myscript.sh**: A SLURM batch script to automate execution and measure performance.

5. **output_files.txt**: Stores combined results from both sequential and parallel executions.

6. **sequential_results.txt**: Stores results of sequential BFS execution.

7. **parallel_results.txt**: Stores results of parallel BFS execution.

