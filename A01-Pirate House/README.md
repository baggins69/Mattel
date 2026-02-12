#PIRATE HOUSE#

Looking at this Mattel Aquarius version of your "Pirates House" game, here's a comprehensive breakdown:
Game Structure

##8 Locations:##

Front Gate (0) - Starting location
Main Hall (1)
Captain's Quarters (2)
Dark Cellar (3)
Hidden Passage (4)
Treasure Vault (5)
Lookout Tower (6)
Secret Dock (7)

##15 Objects:##

Scenery (can't take): gate, parrot, door, painting, pirate, candle, lever, skeleton, chest
Items (can take): safe, key, map, rope, gold, gem

##Game State Variables:##

u - Pirate status (0=sleeping, 1=tied up, 2=attacked)
k - Safe status (0=locked, 1=unlocked)
c - Chest status (0=closed, 1=opened)
s - Lever status

##Win Condition:## Get both the GOLD and GEM to the Front Gate
Complete Solution

South - Go to Main Hall
EXAMINE PAINTING - Reveals secret passage east to Cellar
EEAST - Go to Cellar
GET MAP
REA MAP - Says "remove painting"
SOUTH - Go to Hidden Passage
PULL LEVER - Opens passage west to Treasure Vault
WEST - Go to Treasure Vault
EXAMINE CHEST - Opens chest, reveals gold inside
GET GOLD
EAST, NORTH, WEST - Return to Main Hall
NORTH - Go to Front Gate
EAST - Go to Lookout Tower
EXAMINE SKELETON - Reveals key
GET KEY
WEST, SOUTH, SOUTH - Go to Captain's Quarters
WEST - Go to Secret Dock
GET ROPE
EAST - Return to Captain's Quarters
TIE PIRATE - Ties up the sleeping pirate (requires rope)
REMOVE PAINTING - Reveals safe (only safe if pirate is tied!)
UNLOCK SAFE - Unlock with key, reveals gem
GET GEM
NORTH, NORTH - Return to Front Gate with both treasures
DROP GEM
DROP GOLD
WIN!

##Death Traps##

Don't get the door in Captain's Quarters before tying the pirate - instant death!
Don't remove the painting before tying the pirate - instant death!

##Key Puzzle Mechanics##
The game has a nice logical puzzle chain:

Map hints at removing painting
Must tie pirate first (using rope from dock)
Painting reveals safe (requires key from skeleton)
Safe contains gem
Chest in vault contains gold
Lever opens path to vault

Classic 1983 design! The pirate danger adds tension, and the need to explore thoroughly to find all the pieces makes it a solid adventure game.
