#!/bin/bash

uid_sum=$(awk -F: '{sum+=$3} END {print sum}' /etc/passwd)
gid_sum=$(awk -F: '{sum+=$4} END {print sum}' /etc/passwd)

echo "Sum of UIDs: $uid_sum"
echo "Sum of GIDs: $gid_sum"

if [ "$uid_sum" -gt "$gid_sum" ]; then
  echo "UID sum is greater."
else
  echo "GID sum is greater."
fi
