#!/bin/bash

set -euo pipefail

args=()
for arg in "$@"; do
  if [[ "$arg" != -dead_strip ]]; then
    args+=("$arg")
  fi
done

ld "${args[@]}"
