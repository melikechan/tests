#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run AC test
echo "Running interactor test..."

COMMAND="ubilo-judger tests/interactive_test/ac/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/interactor.out tests/interactive_test/ac/input/input1.txt tests/interactive_test/ac/output/output1.txt"

g++ tests/interactive_test/interactor.cpp -o tests/interactive_test/interactor.out -std=c++20

$COMMAND

COMMAND="ubilo-judger tests/interactive_test/mle/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/interactor.out tests/interactive_test/mle/input/input1.txt tests/interactive_test/mle/output/output1.txt"

$COMMAND

echo -e "\nDone!"