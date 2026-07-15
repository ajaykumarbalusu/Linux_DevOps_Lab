#!/bin/bash

for user in $(cut -d: -f1 /etc/passwd); do
  echo "THE USER NAME IS l $user"
done
