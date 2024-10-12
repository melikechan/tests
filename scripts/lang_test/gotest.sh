#!/bin/bash
top_dir=$(git rev-parse --show-toplevel)
term_color_path=$top_dir/scripts/utils/term_color.sh
runner_path=$top_dir/tests/scripts/runner.sh

source $term_color_path
source $runner_path

echo "${txtwht}${bld}Running all tests for Go"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtgrn}AC"
run_command GO tests/verdict_test/ac/submission.go 1 128000 0 "" "tests/verdict_test/ac/input/input1.txt tests/verdict_test/ac/output/output1.txt"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtred}WA"
run_command GO tests/verdict_test/wa/submission.go 1 128000 0 "" "tests/verdict_test/wa/input/input1.txt tests/verdict_test/wa/output/output1.txt"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtylw}TLE"
run_command GO tests/verdict_test/tle/submission.go 1 128000 0 "" "tests/verdict_test/tle/input/input1.txt tests/verdict_test/tle/output/output1.txt"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtylw}MLE"
run_command GO tests/verdict_test/mle/submission.go 5 128000 0 "" "tests/verdict_test/mle/input/input1.txt tests/verdict_test/mle/output/output1.txt"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtylw}RE"
run_command GO tests/verdict_test/re/submission.go 1 128000 0 "" "tests/verdict_test/re/input/input1.txt tests/verdict_test/re/output/output1.txt"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtblu}CE"
run_command GO tests/verdict_test/ce/submission.go 1 128000 0 "" "tests/verdict_test/ce/input/input1.txt tests/verdict_test/ce/output/output1.txt"

echo -e "\n${rst}Running ${bld}checker test ${rst}${txtgrn}AC"
g++ tests/checker_test/checker.cpp -o tests/checker_test/checker.out -std=c++20
run_command GO tests/checker_test/ac/submission.go 1 128000 0 "tests/checker_test/checker.out" "tests/checker_test/ac/input/input1.txt tests/checker_test/ac/output/output1.txt tests/checker_test/ac/input/input2.txt tests/checker_test/ac/output/output2.txt"

echo -e "\n${rst}Running ${bld}checker test ${rst}${txtred}WA"
g++ tests/checker_test/checker.cpp -o tests/checker_test/checker.out -std=c++20 
run_command GO tests/checker_test/wa/submission.go 1 128000 0 "tests/checker_test/checker.out" "tests/checker_test/wa/input/input1.txt tests/checker_test/wa/output/output1.txt"

echo -e "\n${rst}Running ${bld}testlib checker test ${rst}${txtgrn}AC"
g++ tests/testlib_checker_test/checker.cpp -o tests/testlib_checker_test/checker.out -std=c++20 
run_command GO tests/testlib_checker_test/ac/submission.go 1 128000 1 "tests/testlib_checker_test/checker.out" "tests/testlib_checker_test/ac/input/input1.txt tests/testlib_checker_test/ac/output/output1.txt tests/testlib_checker_test/ac/input/input2.txt tests/testlib_checker_test/ac/output/output2.txt"

echo -e "\n${rst}Running ${bld}testlib checker test ${rst}${txtred}WA"
g++ tests/testlib_checker_test/checker.cpp -o tests/testlib_checker_test/checker.out -std=c++20 
run_command GO tests/testlib_checker_test/wa/submission.go 1 128000 1 "tests/testlib_checker_test/checker.out" "tests/testlib_checker_test/wa/input/input1.txt tests/testlib_checker_test/wa/output/output1.txt"

echo -e "\nDone!"
