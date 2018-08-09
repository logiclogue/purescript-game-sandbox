module Entity(Entity, entity) where

newtype Entity = Entity {
    x      :: Int,
    y      :: Int,
    health :: Int
}

entity :: Entity
entity = Entity {
    x:      0,
    y:      0,
    health: 10
}
