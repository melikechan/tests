#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create input directory
mkdir -p $DIR/input
mkdir -p $DIR/output
for i in {1..100}; do
  echo $i >$DIR/input/input$i.txt
  echo $i >$DIR/output/output$i.txt
done
