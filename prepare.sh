#!/bin/bash

# renames this cookiecutter to the package name you want to build

set -e

if [ -z "$1" ]; then
  echo "a new package name needs to be set"
  echo "usage: $0 newname"
  exit 1
fi

NEWNAME=$1

find .  -path ./venv -prune -o \( -name "*.toml" -o -name "*.md" -o -name "*.py" \) -type f -exec sed -i '' "s/cookiecutter/$NEWNAME/g" {} +
mv cookiecutter $NEWNAME

echo "done"
echo "  pip install -e ."
