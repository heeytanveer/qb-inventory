# qb-inventory
All Credits to go to the original qbcore-framework repository

## [W.I.P] Adding ammo to database [W.I.P]
- This verison of qb-weapons allows ammo to save to database 
- Mostly used for getting ammo values in qb-inventory tool tip
- https://github.com/dojwun/qb-weapons

## Fix Uncaught TypeError 
- To fix "[script:qb-inventory:nui] Uncaught TypeError: Cannot read property "toFixed" of undefined"
- Quality has to be manually added to the item u just recieved 
- For example: 
```
Player.Functions.AddItem(item, amount, slot, {["quality"] = 100})
```


## Video
https://streamable.com/5tpgg0

## Screenshot
![General](https://i.imgur.com/ThshhCp.png)
