#!/bin/bash

# if valgrind is not installed, install it
if ! [ -x "$(command -v valgrind)" ]; then
  echo "Installing valgrind"
  sudo apt-get install valgrind
fi

echo "Running all tests for CPP17"

echo -e "\nRunning verdict memleak test AC"
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/verdict_test/ac/submission.cpp CPP17 1 128000 tests/verdict_test/ac/input/input1.txt tests/verdict_test/ac/output/output1.txt

echo -e "\nRunning verdict memleak test WA"
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/verdict_test/wa/submission.cpp CPP17 1 128000 tests/verdict_test/wa/input/input1.txt tests/verdict_test/wa/output/output1.txt

echo -e "\nRunning verdict memleak test TLE"
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/verdict_test/tle/submission.cpp CPP17 1 128000 tests/verdict_test/tle/input/input1.txt tests/verdict_test/tle/output/output1.txt

echo -e "\nRunning verdict memleak test MLE"
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/verdict_test/mle/submission.cpp CPP17 1 1 tests/verdict_test/mle/input/input1.txt tests/verdict_test/mle/output/output1.txt

echo -e "\nRunning verdict memleak test RE"
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/verdict_test/re/submission.cpp CPP17 1 128000 tests/verdict_test/re/input/input1.txt tests/verdict_test/re/output/output1.txt

echo -e "\nRunning verdict memleak test CE"
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/verdict_test/ce/submission.cpp CPP17 1 128000 tests/verdict_test/ce/input/input1.txt tests/verdict_test/ce/output/output1.txt

echo -e "\nRunning checker memleak test AC"
g++ tests/checker_test/checker.cpp -o tests/checker_test/checker.out -std=c++17 && valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/checker_test/ac/submission.cpp CPP17 1 128000 -c tests/checker_test/checker.out tests/checker_test/ac/input/input1.txt tests/checker_test/ac/output/output1.txt tests/checker_test/ac/input/input2.txt tests/checker_test/ac/output/output2.txt

echo -e "\nRunning checker memleak test WA"
g++ tests/checker_test/checker.cpp -o tests/checker_test/checker.out -std=c++17 && valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ubilo-judger tests/checker_test/wa/submission.cpp CPP17 1 128000 -c tests/checker_test/checker.out tests/checker_test/wa/input/input1.txt tests/checker_test/wa/output/output1.txt

echo -e "\nDone!"
