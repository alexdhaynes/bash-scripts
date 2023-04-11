#!/bin/bash

# Find all index.ts files recursively and generate README.md files
find . -name "index.ts" -exec sh -c '
  # Get the directory name and component name from the index.ts file
  DIR=$(dirname "{}")
  COMPONENT=$(basename $(dirname "{}"))

  # Create the README file with the component name
  echo "# ${COMPONENT} Specs" > "${DIR}/README.md"
' \;
