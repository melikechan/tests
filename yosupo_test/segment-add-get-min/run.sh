#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Running actual solution"

COMMAND="ubilo-judger tests/yosupo_test/segment-add-get-min/submission.cpp CPP20 2 256000"

for i in {1..11}; do
  COMMAND="$COMMAND tests/yosupo_test/segment-add-get-min/input/input$i.txt tests/yosupo_test/segment-add-get-min/output/output$i.txt"
done

$COMMAND

echo "Running naive solution"

COMMAND="ubilo-judger tests/yosupo_test/segment-add-get-min/submission_naive.cpp CPP20 2 256000"

for i in {1..11}; do
  COMMAND="$COMMAND tests/yosupo_test/segment-add-get-min/input/input$i.txt tests/yosupo_test/segment-add-get-min/output/output$i.txt"
done

$COMMAND

echo "Done!"
