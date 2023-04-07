#!/usr/bin/env bash

 # note: the \033 represents the <Esc> character
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
MAGENTA='\033[35m'
CYAN='\033[36m'
RESET='\033[0m'

# Ask for component name
echo -e "${MAGENTA}Enter component name (in PascalCase): ${RESET}"
read component_name

# Create component directory
mkdir $component_name

# Create component file
touch $component_name/$component_name.tsx

# Add component template to file
echo "import React, { FC } from 'react';
import styled from 'styled-components';

interface ${component_name}Props {
  /* Props go here, prefixed with $ */
}

const Styled${component_name} = styled.div<${component_name}Props>\`
  /* Styles go here */
\`;

const ${component_name}: FC<${component_name}Props> = ({ /* Props go here */ }) => {
  return (
    <Styled${component_name} /* Pass props here, prefixed with $ */>
      {/* Component content */}
    </Styled${component_name}>
  );
};

export default ${component_name};" >> $component_name/$component_name.tsx

# Create component test file
touch $component_name/$component_name.test.tsx

# Add test template to file
echo "import { render } from '@testing-library/react';
import ${component_name} from './${component_name}';

describe('${component_name} component', () => {
  it('should render without errors', () => {
    const { getByTestId } = render(<${component_name} />);
    expect(getByTestId('${component_name}')).toBeInTheDocument();
  });
});" >> $component_name/$component_name.test.tsx

# Create index file
touch $component_name/index.ts

# Add index export to file
echo "export { default } from './${component_name}';" >> $component_name/index.ts

# Log success message
echo -e "${GREEN}Component ${component_name} created successfully!${RESET}"
