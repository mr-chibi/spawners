#
execute if score @s redeem_spawner matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Please have a \"minecraft:nether_star\" in your Inventory to redeem spawner!", "color": "red"}]

#
execute if score @s redeem_spawner matches 1.. if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] unless score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "this isn't your spawner! ", "color": "red"}]

# Player Redeems Zombie:
execute if score @s redeem_spawner matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Zombie", "color": "green"}]
execute if score @s redeem_spawner matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "zombie_spawner"]
execute if score @s redeem_spawner matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run clear @s minecraft:nether_star 1

# Player Redeems Skeleton:
execute if score @s redeem_spawner matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Skeleton", "color": "green"}]
execute if score @s redeem_spawner matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "skeleton_spawner"]
execute if score @s redeem_spawner matches 2 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run clear @s minecraft:nether_star 1

# Player Redeems Spider:
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Spider", "color": "green"}]
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "spider_spawner"]
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run clear @s minecraft:nether_star 1

# Player Redeems Cave Spider:
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Changed Spawner to "}, {"text": "Cave Spider", "color": "green"}]
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run data modify entity @e[type=minecraft:marker,tag=spawner,limit=1,distance=0..16] Tags set value ["spawner", "spawner_entity", "cave_spider_spawner"]
execute if score @s redeem_spawner matches 3 if entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,distance=0..16,limit=1] spawner_id run clear @s minecraft:nether_star 1




# Reset Command:
scoreboard players set @s redeem_spawner 0