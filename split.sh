#!/bin/bash
while read -r status name; do
  echo "Text read from file: $name"
  echo "Status: $status"
done < "input.txt"
