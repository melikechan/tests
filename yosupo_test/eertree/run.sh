#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Running actual solution"

COMMAND="ubilo-judger tests/yosupo_test/eertree/submission.cpp CPP20 2 256000"

for i in {1..24}; do
  COMMAND="$COMMAND tests/yosupo_test/eertree/input/input$i.txt tests/yosupo_test/eertree/output/output$i.txt"
done

$COMMAND

echo "Done!"
