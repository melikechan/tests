#!/bin/bash
top_dir=$(git rev-parse --show-toplevel)
post_run_hook_path=$top_dir/tests/scripts/post_run_hook.sh

source $post_run_hook_path

run_command()
{
  lang=$1
  submission_path=$2
  time_limit=$3
  memory_limit=$4
  has_testlib=$5
  checker_path=$6
  io_files=$7

  command="ubilo-judger $submission_path $lang $time_limit $memory_limit"

  if [ "$has_testlib" -eq 1 ]; then
    command="$command --testlib"
  fi

  if [ "$checker_path" != "" ]; then
    command="$command -c $checker_path"
  fi

  for io_file in $io_files; do
    command="$command $io_file"
  done

  $command

  post_run_hook $submission_path
}

valgrind_run_command()
{
  lang=$1
  submission_path=$2
  time_limit=$3
  memory_limit=$4
  has_testlib=$5
  checker_path=$6
  io_files=$7

  command="ubilo-judger $submission_path $lang $time_limit $memory_limit"

  if [ "$has_testlib" -eq 1 ]; then
    command="$command --testlib"
  fi

  if [ "$checker_path" != "" ]; then
    command="$command -c $checker_path"
  fi

  for io_file in $io_files; do
    command="$command $io_file"
  done

  valgrind --leak-check=full --error-exitcode=1 $command

  post_run_hook $submission_path
}