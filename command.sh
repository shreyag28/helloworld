#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status
tail -f /dev/null
mvn clean install
echo "Build complete"
