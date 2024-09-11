#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run AC test
echo "Running interactor test..."

COMMAND="ubilo-judger tests/interactive_test/a_plus_b/ac/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/a_plus_b/interactor.out tests/interactive_test/a_plus_b/ac/input/input1.txt tests/interactive_test/a_plus_b/ac/output/output1.txt tests/interactive_test/a_plus_b/ac/input/input2.txt tests/interactive_test/a_plus_b/ac/output/output2.txt"

g++ tests/interactive_test/a_plus_b/interactor.cpp -o tests/interactive_test/a_plus_b/interactor.out -std=c++20

$COMMAND

COMMAND="ubilo-judger tests/interactive_test/a_plus_b/mle/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/a_plus_b/interactor.out tests/interactive_test/a_plus_b/mle/input/input1.txt tests/interactive_test/a_plus_b/mle/output/output1.txt"

$COMMAND

echo -e "\nDone!"
