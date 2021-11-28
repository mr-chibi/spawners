# Check if there's spawners 16 blocks:
execute if entity @e[type=minecraft:marker,tag=spawner,distance=0..16] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Spawner is 16 blocks to close to other spawner!", "color": "red"}]

# Check if there's NOT spawners in 16 blocks:
execute unless entity @e[type=minecraft:marker,tag=spawner,distance=0..16] run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Spawner Created", "color": "green"}]
execute unless entity @e[type=minecraft:marker,tag=spawner,distance=0..16] run summon minecraft:marker ~ ~ ~ {Tags:["spawner", "spawner_setup"]}
execute unless entity @e[type=minecraft:marker,tag=spawner_setup,distance=0..16] store result score @s spawner_id run data get entity @s UUID[0]

# Setup spawner w/ player's UUID:
execute as @e[type=minecraft:marker,tag=spawner_setup] at @s store result score @s spawner_id run data get entity @p[distance=0..3] UUID[0]
execute as @e[type=minecraft:marker,tag=spawner_setup] at @s store result score @p spawner_id run data get entity @p[distance=0..3] UUID[0]

# Setup Spawner Cooldown:
execute as @e[type=minecraft:marker,tag=spawner_setup] at @s if entity @p[distance=0..3] run scoreboard players add @s spawner_cooldown 0

# Set Spawner Block
execute as @e[type=minecraft:marker,tag=spawner_setup] at @s if entity @p[distance=0..3] run setblock ~ ~ ~ minecraft:end_portal_frame

# Remove Setup tag:
execute as @e[type=minecraft:marker,tag=spawner_setup] at @s run tag @s remove spawner_setup

# Reset Command:
scoreboard players set @s create_spawner 0