#!/bin/bash

# set the initial input directory
input_dir=$1

while [[ $(ls $input_dir/*.tar 2>/dev/null) ]]; do
    # get the name of the first .tar archive in the directory
    input_file=$(ls $input_dir/*.tar | head -n 1)
    
    # unarchive the input file
    tar -xvf $input_file -C $input_dir
    
    # remove the input file
    rm $input_file
done

