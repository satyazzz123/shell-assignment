#!/bin/bash

dir="$1"
find "$dir" -type f -name "*.log" -exec zip -j /tmp/logs.zip {} +
