# Check if spawner exists by player's UUID & placement:
execute if block ~ ~ ~ minecraft:end_portal_frame if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,limit=1] spawner_id run setblock ~ ~ ~ minecraft:air

# Removed spawner:
execute if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,limit=1] spawner_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": " Removed Spawner!", "color": "red"}]
execute if score @s spawner_id = @e[type=minecraft:marker,tag=spawner,limit=1] spawner_id run kill @e[type=minecraft:marker,tag=spawner,distance=0..5]

# Reset Command:
scoreboard players set @s remove_spawner 0