# qb-inventory reskin 

| If you are intested in recieving github updates join the community on **[Discord](https://discord.gg/NVsaunpesE)**! |
|----|

## Info
**[edited qb-weapons](https://github.com/dojwun/qb-weapons)** [W.I.P]
- Mostly used for getting ammo values in qb-inventory tool tip

**[dp-clothing](https://github.com/andristum/dpclothing)**
- dp-clothing is required for clothing to work properly 



## Fix Uncaught TypeError 
- To fix 
```[script:qb-inventory:nui] Uncaught TypeError: Cannot read property "toFixed" of undefined```
- Quality has to be manually added to the item u just recieved 
- For example: ```Player.Functions.AddItem(item, amount, slot, {["quality"] = 100})```

## Fix Item showing up as [+Undefined/-Undefined] 
- To fix you need to add the amount of items you recieved in the item box when item is removed/recieved
- For example:

```TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "add", 1)``` <--
```TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 1)``` <--

- Dont like fixing stuff? Go buy a paid inventory from a leech

## Showcase

**[Video-OUTDATED](https://streamable.com/5tpgg0)**

## 3.0 Reskin

![General](https://i.imgur.com/ZA393yr.png)

## 3.5 Reskin

![General](https://i.imgur.com/hqE0Joe.png)
