#!/usr/bin/bash

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run AC test
echo "Running interactor test..."

COMMAND="ubilo-judger tests/interactive_test/ac/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/interactor.out tests/interactive_test/ac/input/input1.txt tests/interactive_test/ac/output/output1.txt"

g++ tests/interactive_test/interactor.cpp -o tests/interactive_test/interactor.out -std=c++20

$COMMAND

echo -e "\nDone!"

g++ tests/yosupo_test/eertree/checker.cpp -o tests/yosupo_test/eertree/checker.out -std=c++20 && ubilo-judger tests/yosupo_test/eertree/submission.cpp CPP20 1 128000 --testlib -c tests/yosupo_test/eertree/checker.out tests/yosupo_test/eertree/input/input1.txt tests/yosupo_test/eertree/output/output1.txt tests/yosupo_test/eertree/input/input2.txt tests/yosupo_test/eertree/output/output2.txt tests/yosupo_test/eertree/input/input3.txt tests/yosupo_test/eertree/output/output3.txt
