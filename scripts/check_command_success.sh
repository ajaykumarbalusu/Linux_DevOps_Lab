#!/bin/bash

if [ $? -ne 0 ]; then
  echo "Docker not running"
  exit 1
fi
