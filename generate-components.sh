#!/bin/bash

# how to run
# generate-components ./test-files/components.txt
# last item in text file must be newline
# note generate-components is an alias defined in ~/.zshrc

filename=$1
root="."
dir_stack=()

while read line; do
  # Remove leading and trailing whitespaces
  line=$(echo $line | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
  # Count the leading spaces
  spaces=$(echo $line | awk '{ match($0, /^[ \t]*/); print RLENGTH }' | wc -c)
  # Remove the leading spaces
  line=$(echo $line | sed -e 's/^[[:space:]]*//')
  # If the line is not empty
  if [ ! -z "$line" ]; then
    # Pop directories from the stack until we reach the parent directory of this line
    while [ ${#dir_stack[@]} -gt $spaces ]; do
      unset 'dir_stack[${#dir_stack[@]}-1]'
    done
    # Get the directory path for this line
    dir_path="$root/${dir_stack[@]}"
    # Create the parent directories if they don't exist
    mkdir -p "$dir_path"
    # Push this line's directory onto the stack
    dir_stack[$spaces-1]="$line"
    # Create the directory
    dir_path="$root/${dir_stack[*]}"
    mkdir -p "$dir_path"
    # Create the files
    component_file="$dir_path/$line.tsx"
    styles_file="$dir_path/$line.styles.ts"
    index_file="$dir_path/index.ts"
    readme_file="$dir_path/README.md"
    # Write to component file
    echo "import React from 'react';" > "$component_file"
    echo "import { ${line}Wrapper } from './${line}.styles';" >> "$component_file"
    echo "" >> "$component_file"
    echo "interface ${line}Props {" >> "$component_file"
    echo "  /* prop1: type; */" >> "$component_file"
    echo "}" >> "$component_file"
    echo "" >> "$component_file"
    echo "const ${line}: React.FC<${line}Props> = () => {" >> "$component_file"
    echo "  return (" >> "$component_file"
    echo "    <${line}Wrapper>" >> "$component_file"
    echo "      ${line}" >> "$component_file"
    echo "    </${line}Wrapper>" >> "$component_file"
    echo "  );" >> "$component_file"
    echo "};" >> "$component_file"
    echo "" >> "$component_file"
    echo "export default ${line};" >> "$component_file"
    # Write to styles file
    echo "import styled from 'styled-components';" > "$styles_file"
    echo "" >> "$styles_file"
    echo "export const ${line}Wrapper = styled.div\`\`;" >> "$styles_file"
    # Write to index file
    echo "import ${line} from './${line}';" > "$index_file"
    echo "" >> "$index_file"
    echo "export default ${line};" >> "$index_file"
    # Write to README file
    echo "# ${line} Specs" > "$readme_file"
  fi
done < "$filename"
