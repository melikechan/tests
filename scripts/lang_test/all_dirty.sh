#!/bin/bash

rm -f log

# Run all tests for C
if [ -x "$(command -v gcc)" ]; then
  ./tests/scripts/lang_test/ctest.sh >>log
else
  echo "gcc is not installed. Skipping C tests..."
fi

# Run all tests for C++
if [ -x "$(command -v g++)" ]; then
  ./tests/scripts/lang_test/cpptest.sh >>log
else
  echo "g++ is not installed. Skipping C++ tests..."
fi

# Run all tests for Python
if [ -x "$(command -v python3)" ]; then
  ./tests/scripts/lang_test/pythontest.sh >>log
else
  echo "python3 is not installed. Skipping Python tests..."
fi

# Run all tests for PyPy3
if [ -x "$(command -v pypy3)" ]; then
  ./tests/scripts/lang_test/pypytest.sh >>log
else
  echo "pypy3 is not installed. Skipping PyPy3 tests..."
fi

# Run all tests for Rust
if [ -x "$(command -v rustc)" ]; then
  ./tests/scripts/lang_test/rusttest.sh >>log
else
  echo "rustc is not installed. Skipping Rust tests..."
fi

# Run all tests for Java
if [ -x "$(command -v javac)" ]; then
  ./tests/scripts/lang_test/javatest.sh >>log
else
  echo "javac is not installed. Skipping Java tests..."
fi

# Run all tests for C#
if [ -x "$(command -v dotnet)" ]; then
  ./tests/scripts/lang_test/csdotnettest.sh >>log
else
  echo "dotnet is not installed. Skipping C# (.NET) tests..."
fi

if [ -x "$(command -v mono)" ]; then
  ./tests/scripts/lang_test/csmonotest.sh >>log
else
  echo "mono is not installed. Skipping C# (Mono) tests..."
fi

# Run all tests for node.js
if [ -x "$(command -v node)" ]; then
  ./tests/scripts/lang_test/nodetest.sh >>log
else
  echo "node is not installed. Skipping Node.js tests..."
fi

# Run all tests for Kotlin
if [ -x "$(command -v kotlinc)" ]; then
  ./tests/scripts/lang_test/kotlintest.sh >>log
else
  echo "kotlinc is not installed. Skipping Kotlin tests..."
fi

# Run all tests for Go
if [ -x "$(command -v go)" ]; then
  ./tests/scripts/lang_test/gotest.sh >>log
else
  echo "go is not installed. Skipping Go tests..."
fi

# Run all tests for Ruby
if [ -x "$(command -v ruby)" ]; then
  ./tests/scripts/lang_test/rubytest.sh >>log
else
  echo "ruby is not installed. Skipping Ruby tests..."
fi

# Run all tests for Dart
if [ -x "$(command -v dart)" ]; then
  ./tests/scripts/lang_test/darttest.sh >>log
else
  echo "dart is not installed. Skipping Dart tests..."
fi

# Run all tests for PHP
if [ -x "$(command -v php)" ]; then
  ./tests/scripts/lang_test/phptest.sh >>log
else
  echo "php is not installed. Skipping PHP tests..."
fi

# Run all tests for Haskell
if [ -x "$(command -v ghc)" ]; then
  ./tests/scripts/lang_test/haskelltest.sh >>log
else
  echo "ghc is not installed. Skipping Haskell tests..."
fi

# Run all tests for Scala
if [ -x "$(command -v scalac)" ]; then
  ./tests/scripts/lang_test/scalatest.sh >>log
else
  echo "scalac is not installed. Skipping Scala tests..."
fi

# Run all tests for Elixir
if [ -x "$(command -v elixir)" ]; then
  ./tests/scripts/lang_test/elixirtest.sh >>log
else
  echo "elixir is not installed. Skipping Elixir tests..."
fi

# Run all tests for Assembly
if [ -x "$(command -v nasm)" ]; then
  ./tests/scripts/lang_test/assemblytest.sh >>log
else
  echo "nasm is not installed. Skipping Assembly tests..."
fi

# Run all tests for Perl
if [ -x "$(command -v perl)" ]; then
  ./tests/scripts/lang_test/perltest.sh >>log
else
  echo "perl is not installed. Skipping Perl tests..."
fi

# Run all tests for COBOL
if [ -x "$(command -v cobc)" ]; then
  ./tests/scripts/lang_test/coboltest.sh >>log
else
  echo "cobc is not installed. Skipping COBOL tests..."
fi

# Run all tests for Pascal
if [ -x "$(command -v fpc)" ]; then
  ./tests/scripts/lang_test/pascaltest.sh >>log
else
  echo "fpc is not installed. Skipping Pascal tests..."
fi

# Run all tests for Crystal
if [ -x "$(command -v crystal)" ]; then
  ./tests/scripts/lang_test/crystaltest.sh >>log
else
  echo "crystal is not installed. Skipping Crystal tests..."
fi
echo -e "\nDone!"
