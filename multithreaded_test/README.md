# Multithreaded test

**Note:** In the commands below:

- `<submission-lang>` has to be replaced with the language of the submission. (uppercase, e.g. `CPP`, `JAVA`, `PY`,
  etc.)
- Assuming that the `ubilo-judger` is in the path, otherwise you have to provide the full path to the `ubilo-judger`
  executable.
- Assuming that you are in the `tests/multithreaded_test` directory, otherwise you have to provide the full path to the test
  directories.

## Table of contents

1. [Brief description](#brief-description)
2. [Tests](#tests)
    1. [AC test](#ac-test)
    2. [TLE test](#tle-test)

## Brief description

This test is used for determining whether the verdicts are determined correctly or not.

**Time limit**: 1 second

**Memory limit**: ~128 MB

## Tests

<h3 id="ac-test">AC (Accepted) test</h3>

You can use the sample code below to test the AC submission.

```bash
ubilo-judger ac/submission.x <submission-lang> 1 128000 ac/input/input1.txt ac/output/output1.txt ac/input/input2.txt ac/output/output2.txt
```

You can find example codes in [`ac`](ac) directory.


<h3 id="tle-test">TLE (Time Limit Exceeded) test</h3>

You can use the sample code below to test the TLE submission.

```bash
ubilo-judger tle/submission.x <submission-lang> 1 128000 tle/input/input1.txt tle/output/output1.txt
```

You can find example codes in [`tle`](tle) directory.