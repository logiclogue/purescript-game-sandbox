module GameState(GameState, gameState) where

import Entity (Entity, entity)

newtype GameState = GameState {
    player  :: Entity,
    zombies :: Array Entity
}

gameState :: GameState
gameState = GameState {
    player:  entity,
    zombies: []
}
