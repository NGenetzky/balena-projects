#!/bin/bash

setup() {
  # Start sshd if we don't use the init system
  if [ "$INITSYSTEM" != "on" ]; then
    /usr/sbin/sshd -p 22 &
  fi
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

