#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run AC test
echo "Running queue test AC"

COMMAND="ubilo-judger tests/testcase_test/ac/submission.cpp CPP17 1 128000"

for i in {1..100}; do
  COMMAND="$COMMAND tests/testcase_test/ac/input/input$i.txt tests/testcase_test/ac/output/output$i.txt"
done

$COMMAND

echo -e "\nDone!"

# Run TLE test

echo "Running queue test TLE"

COMMAND="ubilo-judger tests/testcase_test/tle/submission.cpp CPP17 1 128000"

for i in {1..100}; do
  COMMAND="$COMMAND tests/testcase_test/tle/input/input$i.txt tests/testcase_test/tle/output/output$i.txt"
done

$COMMAND

echo -e "\nDone!"