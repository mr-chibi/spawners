#
execute if score @s redeem_spawner matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Please have a \"minecraft:nether_star\" in your Inventory to redeem spawner!", "color": "red"}]


# Player Redeems Cow:
execute if score @s redeem_spawner matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Cow", "color": "green"}]
execute if score @s redeem_spawner matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "cow_spawner"]
execute if score @s redeem_spawner matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run clear @s minecraft:nether_star 1

# Player Redeems Sheep:
execute if score @s redeem_spawner matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Sheep", "color": "green"}]
execute if score @s redeem_spawner matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "sheep_spawner"]
execute if score @s redeem_spawner matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run clear @s minecraft:nether_star 1

# Player Redeems Pig:
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Pig", "color": "green"}]
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "pig_spawner"]
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run clear @s minecraft:nether_star 1

# Reset Command:
scoreboard players set @s redeem_spawner 0