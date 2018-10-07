#!/bin/bash

setup() {
  sigrok-cli --version
}

loop() {
    echo "sleeping... $(date --iso-8601=s)"
    sleep 60
}

main() {
  setup
  while : ; do
    loop
  done
}

main

