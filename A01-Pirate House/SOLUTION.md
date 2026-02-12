Looking at this Mattel Aquarius version of your "Pirates House" game, here's a comprehensive breakdown:  

# Game Structure / Walkthrough Solution

##8 Locations:
•	Front Gate (0) - Starting location  
•	Main Hall (1)  
•	Captain's Quarters (2)  
•	Dark Cellar (3)  
•	Hidden Passage (4)  
•	Treasure Vault (5)  
•	Lookout Tower (6)  
•	Secret Dock (7)  

##15 Objects:  
•	Scenery (can't take): gate, parrot, door, painting, pirate, candle, lever, skeleton, chest  
•	Items (can take): safe, key, map, rope, gold, gem  

Game State Variables:  
•	u - Pirate status (0=sleeping, 1=tied up, 2=attacked)  
•	k - Safe status (0=locked, 1=unlocked)  
•	c - Chest status (0=closed, 1=opened)  
•	s - Lever status  

Win Condition: Get both the GOLD and GEM to the Front Gate  

Complete Solution  
1.	SOUTH - Go to Main Hall
2.	EXAMINE PAINTING - Reveals secret passage east to Cellar
3.	EEAST - Go to Cellar
4.	GET MAP
5.	READ MAP - Says "remove painting"
6.	SOUTH - Go to Hidden Passage
7.	PULL LEVER - Opens passage west to Treasure Vault
8.	WEST - Go to Treasure Vault
9.	EXA CHEST - Opens chest, reveals gold inside
10.	GET GOLD
11.	EAST, NORTH, WEST - Return to Main Hall
12.	NORTH - Go to Front Gate
13.	EAST - Go to Lookout Tower
14.	EXAMINE SKELETON - Reveals key
15.	GET KEY
16.	WEST, SOUTH, SOUTH - Go to Captain's Quarters
17.	WEST - Go to Secret Dock
18.	GET ROPE
19.	EAST - Return to Captain's Quarters
20.	TIE PIRATE - Ties up the sleeping pirate (requires rope)
21.	REMOVE PAINTING - Reveals safe (only safe if pirate is tied!)
22.	UNLOCK SAFE - Unlock with key, reveals gem
23.	GET GEM
24.	NORTH, NORTH - Return to Front Gate with both treasures
25.	DROP GEM
26.	DROP GOLD
27.	WIN!
Death Traps
•	Don't get the door in Captain's Quarters before tying the pirate - instant death!
•	Don't remove the painting before tying the pirate - instant death!
Key Puzzle Mechanics
The game has a nice logical puzzle chain:
•	Map hints at removing painting
•	Must tie pirate first (using rope from dock)
•	Painting reveals safe (requires key from skeleton)
•	Safe contains gem
•	Chest in vault contains gold
•	Lever opens path to vault
The pirate danger adds tension, and the need to explore thoroughly to find all the pieces makes it a solid adventure game.

