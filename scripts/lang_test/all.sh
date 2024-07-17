#!/bin/bash

cmake -S . -B build/ && cd build/ && make package && cd ..

# If the target machine is debian-based, install deb package
if [ -x "$(command -v lsb_release)" ]; then
  if lsb_release -a | grep -q "Ubuntu\|Debian"; then
    if dpkg-query -s "ubilo-judger" >/dev/null 2>&1; then
      sudo dpkg -r ubilo-judger
      echo "Uninstalling old version of ubilo-judger..."
    fi
    sudo dpkg -i build/ubilo-judger-*.*.*-Linux.deb
    echo "Installing new version of ubilo-judger..."
  fi
else
  if cat /etc/os-release | grep -q "Ubuntu\|Debian"; then
    if dpkg-query -s "ubilo-judger" >/dev/null 2>&1; then
      sudo dpkg -r ubilo-judger
      echo "Uninstalling old version of ubilo-judger..."
    fi
    sudo dpkg -i build/ubilo-judger-*.*.*-Linux.deb
    echo "Installing new version of ubilo-judger..."
  fi
  echo "The target machine is not Debian-based."
fi

# If the target machine is redhat-based, install rpm package
if [ -x "$(command -v lsb_release)" ]; then
  if lsb_release -a | grep -q "CentOS\|Red Hat"; then
    if rpm -q "ubilo-judger" >/dev/null 2>&1; then
      sudo rpm -e ubilo-judger
      echo "Uninstalling old version of ubilo-judger..."
    fi
    sudo rpm -i build/ubilo-judger-*.*.*-Linux.rpm
    echo "Installing new version of ubilo-judger..."
  fi
else
  if cat /etc/os-release | grep -q "CentOS\|Red Hat"; then
    if rpm -q "ubilo-judger" >/dev/null 2>&1; then
      sudo rpm -e ubilo-judger
      echo "Uninstalling old version of ubilo-judger..."
    fi
    sudo rpm -i build/ubilo-judger-*.*.*-Linux.rpm
    echo "Installing new version of ubilo-judger..."
  fi
  echo "The target machine is not Red Hat-based."
fi

# Use dirty script to run all tests
./tests/scripts/lang_test/all_dirty.sh
