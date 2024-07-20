#!/bin/bash
top_dir=$(git rev-parse --show-toplevel)
term_color_path=$top_dir/scripts/utils/term_color.sh

source $term_color_path

echo "${txtwht}${bld}Running all tests for Lua"

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtgrn}AC"
ubilo-judger tests/verdict_test/ac/submission.lua LUA 1 128000 tests/verdict_test/ac/test1in.txt tests/verdict_test/ac/test1out.txt

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtred}WA"
ubilo-judger tests/verdict_test/wa/submission.lua LUA 1 128000 tests/verdict_test/wa/test1in.txt tests/verdict_test/wa/test1out.txt

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtylw}TLE"
ubilo-judger tests/verdict_test/tle/submission.lua LUA 1 128000 tests/verdict_test/tle/test1in.txt tests/verdict_test/tle/test1out.txt

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtylw}MLE"
ubilo-judger tests/verdict_test/mle/submission.lua LUA 15 32000 tests/verdict_test/mle/test1in.txt tests/verdict_test/mle/test1out.txt

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtylw}RE"
ubilo-judger tests/verdict_test/re/submission.lua LUA 1 128000 tests/verdict_test/re/test1in.txt tests/verdict_test/re/test1out.txt

echo -e "\n${rst}Running ${bld}verdict test ${rst}${txtblu}CE"
ubilo-judger tests/verdict_test/ce/submission.lua LUA 1 128000 tests/verdict_test/ce/test1in.txt tests/verdict_test/ce/test1out.txt

echo -e "\n${rst}Running ${bld}checker test ${rst}${txtgrn}AC"
g++ tests/checker_test/checker.cpp -o tests/checker_test/checker.out -std=c++20 && ubilo-judger tests/checker_test/ac/submission.lua LUA 1 128000 -c tests/checker_test/checker.out tests/checker_test/ac/test1in.txt tests/checker_test/ac/test1out.txt tests/checker_test/ac/test2in.txt tests/checker_test/ac/test2out.txt

echo -e "\n${rst}Running ${bld}checker test ${rst}${txtred}WA"
g++ tests/checker_test/checker.cpp -o tests/checker_test/checker.out -std=c++20 && ubilo-judger tests/checker_test/wa/submission.lua LUA 1 128000 -c tests/checker_test/checker.out tests/checker_test/wa/test1in.txt tests/checker_test/wa/test1out.txt

echo -e "\nDone!"
