#!/bin/bash

# Clean up test artifacts (compiled file etc.)
# First argument is the submission path.
post_run_hook()
{
    submission_path=$1

    # If file, get the directory
    if [ -f $submission_path ]; then
        submission_dir=$(dirname $submission_path)
    else
        submission_dir=$submission_path
    fi
    
    # Remove compiled file
    rm -f $submission_dir/*.o
    rm -f $submission_dir/*.hi

    rm -f $submission_dir/submission    
    rm -f $submission_dir/*.out
    rm -f $submission_dir/*.exe
    rm -f $submission_dir/*.class
    rm -f $submission_dir/*.jar

    # Remove pycache
    find $submission_dir -type d -name __pycache__ -exec rm -rf {} \;
    
    # Remove node_modules
    find $submission_dir -type d -name node_modules -exec rm -rf {} \;

    # Remove user output
    find $submission_dir -type d -name user_output -exec rm -rf {} \;
}