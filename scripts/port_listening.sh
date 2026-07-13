#!/bin/bash

port=22

if ss -tuln | grep -q ":$port "
then
    echo "Port $port is listening."
else
    echo "Port $port is not listening."
fi
