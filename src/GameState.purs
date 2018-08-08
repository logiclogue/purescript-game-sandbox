module GameState(GameState, createGameState, updatePlayer) where

type GameState = {
    player :: String
}

createGameState :: String -> GameState
createGameState player = { player }

updatePlayer :: String -> GameState -> GameState
updatePlayer player gameState = gameState { player = player }
