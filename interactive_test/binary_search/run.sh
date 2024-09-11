#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run AC test
echo "Running interactor test..."

COMMAND="ubilo-judger tests/interactive_test/binary_search/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/binary_search/interactor.out -c tests/interactive_test/binary_search/checker.out tests/interactive_test/binary_search/input/input1.txt tests/interactive_test/binary_search/output/output1.txt tests/interactive_test/binary_search/input/input2.txt tests/interactive_test/binary_search/output/output1.txt"

g++ tests/interactive_test/binary_search/interactor.cpp -o tests/interactive_test/binary_search/interactor.out -std=c++20
g++ tests/interactive_test/binary_search/checker.cpp -o tests/interactive_test/binary_search/checker.out -std=c++20

$COMMAND

echo -e "\nDone!"