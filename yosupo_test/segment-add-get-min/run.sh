#!/usr/bin/bash
top_dir=$(git rev-parse --show-toplevel)
post_run_hook_path=$top_dir/tests/scripts/post_run_hook.sh

source $post_run_hook_path

# Get script directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

g++ tests/yosupo_test/segment-add-get-min/checker.cpp -o tests/yosupo_test/segment-add-get-min/checker.out

echo "Running actual solution"

COMMAND="ubilo-judger tests/yosupo_test/segment-add-get-min/submission.cpp CPP20 2 256000 --testlib -c tests/yosupo_test/segment-add-get-min/checker.out"

for i in {1..11}; do
  COMMAND="$COMMAND tests/yosupo_test/segment-add-get-min/input/input$i.txt tests/yosupo_test/segment-add-get-min/output/output$i.txt"
done

$COMMAND

post_run_hook tests/yosupo_test/segment-add-get-min/submission.cpp

echo "Running naive solution"

COMMAND="ubilo-judger tests/yosupo_test/segment-add-get-min/submission_naive.cpp CPP20 2 256000 --testlib -c tests/yosupo_test/segment-add-get-min/checker.out"

for i in {1..11}; do
  COMMAND="$COMMAND tests/yosupo_test/segment-add-get-min/input/input$i.txt tests/yosupo_test/segment-add-get-min/output/output$i.txt"
done

$COMMAND

post_run_hook tests/yosupo_test/segment-add-get-min/submission_naive.cpp

echo "Done!"
