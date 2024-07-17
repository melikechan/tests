# Verdict test

**Note:** In the commands below:

- `<submission-lang>` has to be replaced with the language of the submission. (uppercase, e.g. `CPP`, `JAVA`, `PY`, etc.)
- Assuming that the `ubilo-judger` is in the path, otherwise you have to provide the full path to the `ubilo-judger` executable.
- Assuming that you are in the `tests/verdict_test` directory, otherwise you have to provide the full path to the test directories.

## Table of contents

1. [Brief description](#brief-description)
2. [Tests](#tests)
    1. [AC test](#ac-test)
    2. [WA test](#wa-test)
    3. [TLE test](#tle-test)
    4. [MLE test](#mle-test)
    5. [RE test](#re-test)
    6. [CE test](#ce-test)

## Brief description

This test is used for determining whether the verdicts are determined correctly or not.

**Time limit**: 1 second (5 seconds for MLE test)

**Memory limit**: ~128 MB

## Tests

<h3 id="ac-test">AC (Accepted) test</h3>

You can use the sample code below to test the AC submission.

```bash
ubilo-judger ac/submission.x <submission-lang> 1 128000 ac/input/input1.txt ac/output/output1.txt ac/input/input2.txt ac/output/output2.txt
```

You can find example codes in [`ac`](ac) directory.

<h3 id="wa-test">WA (Wrong Answer) test</h3>

You can use the sample code below to test the WA submission.

```bash
ubilo-judger wa/submission.x <submission-lang> 1 128000 wa/input/input1.txt wa/output/output1.txt
```

You can find example codes in [`wa`](wa) directory.

<h3 id="tle-test">TLE (Time Limit Exceeded) test</h3>

You can use the sample code below to test the TLE submission.

```bash
ubilo-judger tle/submission.x <submission-lang> 1 128000 tle/input/input1.txt tle/output/output1.txt
```

You can find example codes in [`tle`](tle) directory.

<h3 id="mle-test">MLE (Memory Limit Exceeded) test</h3>

_This test is intended to see if the memory limit is working correctly, therefore for the sake of the test, maximum memory usage has to **be at most 1GB**._

You can use the sample code below to test the MLE submission.

```bash
ubilo-judger mle/submission.x <submission-lang> 5 128000 mle/input/input1.txt mle/output/output1.txt
```

You can find example codes in [`mle`](mle) directory.

**Important note:** For Dart, time limit is **10 seconds and memory limit is 32MB**.

<h3 id="re-test">RE (Runtime Error) test</h3>

You can use the sample code below to test the RE submission.

```bash
ubilo-judger re/submission.x <submission-lang> 1 128000 re/input/input1.txt re/output/output1.txt
```

You can find example codes in [`re`](re) directory.

<h3 id="ce-test">CE (Compilation Error) test</h3>

You can use the sample code below to test the CE submission.

```bash
ubilo-judger ce/submission.x <submission-lang> 1 128000 ce/input/input1.txt ce/output/output1.txt
```

You can find example codes in [`ce`](ce) directory.
