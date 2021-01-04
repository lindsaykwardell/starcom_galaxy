# STARCOM GALAXY

## Counters

|Type                         |Time               |
|-----------------------------|-------------------|
|Earn credits                 |30 min             |
|Earn industry                |1 hour             |
|Earn research                |4 hours            |
|Repair ships/stations        |1 DEF per 30 min   |
|Ship/station build speed     |1 DEF per 30 min   |
|Travel time                  |10 min per distance| 
|Combat                       |30 min             |

## Ships/Stations

|Name               |Cost       |ATK  |DEF  |FRE  |EVA  |
|-------------------|-----------|-----|-----|-----|-----|
|Scout              |50c/10i    |2    |10   |1    |20   |
|Corvette           |75c/20i    |5    |20   |2    |15   |
|Frigate            |75c/20i    |10   |15   |2    |15   |
|Cruiser            |150c/50i   |15   |40   |3    |10   |
|Battleship         |250c/75i   |25   |80   |4    |5    |
|Trading Station    |500c/125i  |3    |80   |1    |0    |
|Mining Station     |500c/125i  |3    |80   |1    |0    |
|Research Station   |500c/125i  |3    |80   |1    |0    |
|Observation Post   |500c/125i  |5    |120  |1    |0    |
|Defense Station    |1000c/300i |20   |300  |3    |0    |
|Shipyard           |2000c/700i |5    |500  |1    |0    |


## Improvements

|Type     |CDT  |IND  |RES  |
|---------|-----|-----|-----|
|Credits  |10   |6    |2    |
|Industry |20   |10   |6    |
|Research |40   |20   |10   |

Planets have a max improvement level (5-20), and each resource has a max level. A planet may allow 20 improvements, but only 3 research improvements.

## Technologies

|Name               |Base Cost  | Per lvl cost  | Description                                     |
|-------------------|-----------|---------------|-------------------------------------------------|
|Attack Power       |40c/8r     |L^2            |Increase ATK by L                                |
|Defense Power      |40c/8r     |L^2            |Increase DEF by L                                |
|Fire Rate          |60c/12r    |L^3            |Increase FRE by L                                |
|Evasion            |60c/12r    |L^3            |Increase EVA by L                                |
|Repair Speed       |100c/20r   |L^4            |Increase repair speed by 1 DEF per 30 min        |
|Construction Speed |150c/30r   |L^4            |Increase construction speed by 1 DEF per 30 min  |
|Travel Speed       |250c/50r   |L^5            |Reduce travel speed by L * 10 min                |
|Credit Income      |25c/5r     |L^2            |Increase credit income by L per station/planet   |
|Industry Income    |50c/10r    |L^3            |Increase industry income by L per station/planet |
|Research Income    |100c/20r   |L^4            |Increase research income by L per station/planet |    

Example costs for evasion upgrades:

- L1: 60c/12r
- L2: 100c/20r
- L3: 195c/39r
- L4: 380c/76r
- L5: 685c/137r

## TRAVEL

Ships travel between systems at a speed equal to difference in letters * 10. Example:

### Example travel times
- AAAA -> AAAB = 10 minutes travel time.
- ABCD -> BCDF = 40 minutes travel time.

Travel speed research reduces the total by its value. Travel speed cannot be less than 10 minutes.

### Travel speed tech: level 2
- ABCD -> BCDF = 20 minutes travel time.

# Exploration

Scouts are sent on exploration missions in order to discover more systems. Exploration takes 24 hours. There is a 20% chance that a scout ship will be destroyed while exploring. Each scout ship may discover between 1-3 systems. Other ships can only travel to known systems.

If a scout discovers a system controlled by another player, each player will be informed and can begin communications.

# Systems

Each system may have between 0 and 5 useful planets. Systems can be divided between players, but a planet can only be controlled by one player.

Systems support between 1-30 stations. Any type of station can be built to fill these slots.

Any player can attempt to construct stations in a system. It is up to the players in that system to prevent incursions from hostile forces.

# Colonization

Colonization costs 1000 credits/600 industry. By default, a new planet creates 1 credit, 0 industry, and 0 research.

# Combat

*NOTE: Space is, as they say, BIG. Combat is slow. Do not expect quick results.*

Combat occurs when a player decides to attack another player in a system. Combat does not happen automatically. Unless the opposing player or players are expecting an attack (ships/stations can be put in defensive mode, but increases upkeep costs), the attacking player gets an attack of opportunity (AOO). Any number of players can choose to be involved if they have ships or stations in a system where combat is taking place.

Every 30 minutes, ships in combat are randomized and fire at each other. Ships can be assigned roles that prefer to target certain ship types.

- Target small ships
- Target medium ships
- Target large ships
- Target stations

Ships have a fire rate (FRE). This is the number of times they can attempt to fire their weapons. Each attack, a hit number is checked (0-50). If the evasion (EVA) of the target is greater than or equal to the random number, the attack misses. If it hits, damage is done to the target equal to the ATK of the attacking ship or the difference between EVA and the hit number, whichever is smaller. For example:

- Battleship attacks Corvette
- Battleship makes four hit checks. They are - 7, 13, 3, and 25.
- Three of the four attacks miss Corvette.
- Hit roll is 25. Corvette has EVA of 15, so the attack hits.
- Battleship's ATK is 25, but the difference between EVA and HIT is 10.
- Corvette takes 10 damage to DEF.

Between attack rolls, any players involved in combat may choose to retreat. Opposing ships will take an AOO before ships successfully retreat.

Combat continues until all opposing ships are destroyed or retreat.