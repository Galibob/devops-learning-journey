#!/bin/bash

check_service() {
  if systemctl is-active --quiet $1; then
    echo "$1 is running"
  else
    echo "$1 is NOT running"
  fi
}

if [ $# -eq 0 ]; then
  echo "Usage: $0 service1 [service2 ...]"
  exit 1
fi

for service in "$@"; do
  check_service $service
done

