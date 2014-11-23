#!/usr/bin/env bash

if [[ -n "$1" ]]; then
  openssl passwd -1 $1
else
  echo "Please enter the value "
fi