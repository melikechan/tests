#!/usr/bin/bash
top_dir=$(git rev-parse --show-toplevel)
post_run_hook_path=$top_dir/tests/scripts/post_run_hook.sh

source $post_run_hook_path

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run AC test
echo "Running interactor test..."

COMMAND="ubilo-judger tests/interactive_test/a_plus_b/ac/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/a_plus_b/interactor.out tests/interactive_test/a_plus_b/ac/input/input1.txt tests/interactive_test/a_plus_b/ac/output/output1.txt tests/interactive_test/a_plus_b/ac/input/input2.txt tests/interactive_test/a_plus_b/ac/output/output2.txt"

g++ tests/interactive_test/a_plus_b/interactor.cpp -o tests/interactive_test/a_plus_b/interactor.out -std=c++20

$COMMAND

post_run_hook tests/interactive_test/a_plus_b/ac/submission.cpp

COMMAND="ubilo-judger tests/interactive_test/a_plus_b/mle/submission.cpp CPP17 1 128000 --testlib -i tests/interactive_test/a_plus_b/interactor.out tests/interactive_test/a_plus_b/mle/input/input1.txt tests/interactive_test/a_plus_b/mle/output/output1.txt"

$COMMAND

post_run_hook tests/interactive_test/a_plus_b/mle/submission.cpp

echo -e "\nDone!"
