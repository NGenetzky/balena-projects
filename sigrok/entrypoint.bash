#!/bin/bash

setup() {
  sigrok-cli --version
  sigrok-cli --driver fx2lafw --scan
}

loop() {
    echo "sleeping... $(date --iso-8601=s)"
    sigrok-cli --driver fx2lafw --time 3000
    # sigrok-cli --driver fx2lafw --continuous
    sleep 60
}

main() {
  setup
  while : ; do
    loop
  done
}

main
