#!/bin/bash

# Create the root directory for the components
mkdir -p src/components

touch src/components/Layout/MainMenu.tsx src/components/Layout/MainMenu.styles.ts
echo -e "import React from 'react';\nimport { MainMenuWrapper } from './MainMenu.styles';\n\ntype Props = {};\n\nconst MainMenu: React.FC<Props> = () => {\n  return (\n    <MainMenuWrapper>\n      <h1>MainMenu</h1>\n    </MainMenuWrapper>\n  );\n};\n\nexport default MainMenu;" > src/components/Layout/MainMenu.tsx
echo -e "import styled from 'styled-components';\n\nexport const MainMenuWrapper = styled.div``;" > src/components/Layout/MainMenu.styles.ts

touch src/components/Layout/Footer.tsx src/components/Layout/Footer.styles.ts
echo -e "import React from 'react';\nimport { FooterWrapper } from './Footer.styles';\n\ntype Props = {};\n\nconst Footer: React.FC<Props> = () => {\n  return (\n    <FooterWrapper>\n      <h1>Footer</h1>\n    </FooterWrapper>\n  );\n};\n\nexport default Footer;" > src/components/Layout/Footer.tsx
echo -e "import styled from 'styled-components';\n\nexport const FooterWrapper = styled.div``;" > src/components/Layout/Footer.styles.ts

# Create the HomeScreen component and its style file
touch src/components/HomeScreen.tsx src/components/HomeScreen.styles.ts
echo -e "import React from 'react';\nimport { HomeScreenWrapper } from './HomeScreen.styles';\n\ntype Props = {};\n\nconst HomeScreen: React.FC<Props> = () => {\n  return (\n    <HomeScreenWrapper>\n      <h1>HomeScreen</h1>\n    </HomeScreenWrapper>\n  );\n};\n\nexport default HomeScreen;" > src/components/HomeScreen.tsx
echo -e "import styled from 'styled-components';\n\nexport const HomeScreenWrapper = styled.div``;" > src/components/HomeScreen.styles.ts

# Create the GameRoom component and its sub-components
mkdir -p src/components/Game/GameRoom
touch src/components/Game/GameRoom/GameRoom.tsx src/components/Game/GameRoom/GameRoom.styles.ts
echo -e "import React from 'react';\nimport { GameRoomWrapper } from './GameRoom.styles';\n\ntype Props = {};\n\nconst GameRoom: React.FC<Props> = () => {\n  return (\n    <GameRoomWrapper>\n      <h1>GameRoom</h1>\n    </GameRoomWrapper>\n  );\n};\n\nexport default GameRoom;" > src/components/Game/GameRoom/GameRoom.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GameRoom/GameRoom.styles.ts

mkdir -p src/components/Game/GameOver
touch src/components/Game/GameOver/GameOver.tsx src/components/Game/GameOver/GameOver.styles.ts
echo -e "import React from 'react';\nimport { GameOverWrapper } from './GameOver.styles';\n\ntype Props = {};\n\nconst GameOver: React.FC<Props> = () => {\n  return (\n    <GameOverWrapper>\n      <h1>GameOver</h1>\n    </GameOverWrapper>\n  );\n};\n\nexport default GameOver;" > src/components/Game/GameOver/GameOver.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GameOver/GameOver.styles.ts

mkdir -p src/components/Game/GameLobby
touch src/components/Game/GameLobby/GameLobby.tsx src/components/Game/GameLobby/GameLobby.styles.ts
echo -e "import React from 'react';\nimport { GameLobbyWrapper } from './GameLobby.styles';\n\ntype Props = {};\n\nconst GameLobby: React.FC<Props> = () => {\n  return (\n    <GameLobbyWrapper>\n      <h1>GameLobby</h1>\n    </GameLobbyWrapper>\n  );\n};\n\nexport default GameLobby;" > src/components/Game/GameLobby/GameLobby.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GameLobby/GameLobby.styles.ts

mkdir -p src/components/Game/GamePlayers
touch src/components/Game/GamePlayers/GamePlayers.tsx src/components/Game/GamePlayers/GamePlayers.styles.ts
echo -e "import React from 'react';\nimport { GamePlayersWrapper } from './GamePlayers.styles';\n\ntype Props = {};\n\nconst GamePlayers: React.FC<Props> = () => {\n  return (\n    <GamePlayersWrapper>\n      <h1>GamePlayers</h1>\n    </GamePlayersWrapper>\n  );\n};\n\nexport default GamePlayers;" > src/components/Game/GamePlayers/GamePlayers.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GamePlayers/GamePlayers.styles.ts

mkdir -p src/components/Game/GameBoard
touch src/components/Game/GameBoard/GameBoard.tsx src/components/Game/GameBoard/GameBoard.styles.ts
echo -e "import React from 'react';\nimport { GameBoardWrapper } from './GameBoard.styles';\n\ntype Props = {};\n\nconst GameBoard: React.FC<Props> = () => {\n  return (\n    <GameBoardWrapper>\n      <h1>GameBoard</h1>\n    </GameBoardWrapper>\n  );\n};\n\nexport default GameBoard;" > src/components/Game/GameBoard/GameBoard.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GameBoard/GameBoard.styles.ts

mkdir -p src/components/Game/GameRules
touch src/components/Game/GameRules/GameRules.tsx src/components/Game/GameRules/GameRules.styles.ts
echo -e "import React from 'react';\nimport { GameRulesWrapper } from './GameRules.styles';\n\ntype Props = {};\n\nconst GameRules: React.FC<Props> = () => {\n  return (\n    <GameRulesWrapper>\n      <h1>GameRules</h1>\n    </GameRulesWrapper>\n  );\n};\n\nexport default GameRules;" > src/components/Game/GameRules/GameRules.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GameRules/GameRules.styles.ts

mkdir -p src/components/Game/GameSettings
touch src/components/Game/GameSettings/GameSettings.tsx src/components/Game/GameSettings/GameSettings.styles.ts
echo -e "import React from 'react';\nimport { GameSettingsWrapper } from './GameSettings.styles';\n\ntype Props = {};\n\nconst GameSettings: React.FC<Props> = () => {\n  return (\n    <GameSettingsWrapper>\n      <h1>GameSettings</h1>\n    </GameSettingsWrapper>\n  );\n};\n\nexport default GameSettings;" > src/components/Game/GameSettings/GameSettings.tsx
echo -e "import styled from 'styled-components';\n\nexport const Container = styled.div``;" > src/components/Game/GameSettings/GameSettings.styles.ts

# Create the Timer component and its style file
mkdir -p src/components/Game/Timer/Timer
touch src/components/Game/Timer.tsx src/components/Game/Timer.styles.ts
echo -e "import React from 'react';\nimport { TimerWrapper } from './Timer.styles';\n\ntype Props = {};\n\nconst Timer: React.FC<Props> = () => {\n  return (\n    <TimerWrapper>\n      <h1>Timer</h1>\n    </TimerWrapper>\n  );\n};\n\nexport default Timer;" > src/components/Game/Timer/Timer.tsx
echo -e "import styled from 'styled-components';\n\nexport const TimerWrapper = styled.div``;" > src/components/Game/Timer/Timer.styles.ts
