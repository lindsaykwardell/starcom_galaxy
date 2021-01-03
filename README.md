# STARCOM GALAXY

## Counters

|Type                         |Time               |
|-----------------------------|-------------------|
|Earn credits                 |30 min             |
|Earn indudstry               |1 hour             |
|Earn research                |4 hours            |
|Repair ships/stations        |1 DEF per 30 min   |
|Ship/station build speed     |1 DEF per 30 min   |
|Travel time                  |10 min per distance| 

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

TRAVEL:

Ships travel between systems at a speed equal to difference in letters * 10. Example:

AAAA -> AAAB = 10 minutes travel time.

ABCD -> BCDF = 40 minutes travel time.

Travel speed research reduces the total by its value. Travel speed cannot be less than 10 minutes.

Travel speed tech: level 2
ABCD -> BCDF = 20 minutes travel time.

Exploration:

Scouts are sent on exploration missions in order to discover more systems. Exploration takes 24 hours. There is a 20% chance that a scout ship will be destroyed while exploring. Each scout ship may discover between 1-3 systems. Other ships can only travel to known systems.

Systems:

Each system may have between 0 and 5 useful planets. Systems can be divided between players, but a planet can only be controlled by one player.

Systems support between 1-30 stations. Any type of station can be built to fill these slots.

Any player can attempt to construct stations in a system. It is up to the players in that system to prevent incursions from hostile forces.

Colonization:

Colonization costs 1000 credits/600 industry. By default, a new planet creates 1 credit, 0 industry, and 0 research.

Combat:

Combat is slow. Do not expect quick results. Each ship has a combat speed. This is how often it fires in real time.