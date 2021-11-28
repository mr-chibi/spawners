# Foreach "soul" that spawns check if "soul" matches "total souls":
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown] at @s if entity @a[distance=0..16] if score @s souls_collected = souls_limit souls_collected run tellraw @a[distance=0..16] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "You've hit maxiumum amount of mobs! \nStarting cooldown process!", "color": "red"}]
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown] at @s if entity @a[distance=0..16] if score @s souls_collected = souls_limit souls_collected run tag @s add spawner_cooldown

# Start Spawner Cooldown:
execute as @e[type=minecraft:marker,tag=spawner,tag=spawner_cooldown] at @s if entity @a[distance=0..16] if score @s spawner_cooldown < reset_cooldown spawner_cooldown run scoreboard players add @s spawner_cooldown 1
execute as @e[type=minecraft:marker,tag=spawner,tag=spawner_cooldown] at @s if entity @a[distance=0..16] if score @s spawner_cooldown = reset_cooldown spawner_cooldown run scoreboard players remove @s souls_collected 1
execute as @e[type=minecraft:marker,tag=spawner,tag=spawner_cooldown] at @s if entity @a[distance=0..16] if score @s spawner_cooldown = reset_cooldown spawner_cooldown run scoreboard players set @s spawner_cooldown 0

# Reset Spawner:
execute as @e[type=minecraft:marker,tag=spawner,tag=spawner_cooldown] at @s if entity @a[distance=0..16] if score @s souls_collected matches 0 run tellraw @a[distance=0..16] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Cooldown, Complete! Restarting Spawner!", "color": "green"}]
execute as @e[type=minecraft:marker,tag=spawner,tag=spawner_cooldown] at @s if entity @a[distance=0..16] if score @s souls_collected matches 0 run kill @e[tag=spawner_mob,distance=0..16]
execute as @e[type=minecraft:marker,tag=spawner,tag=spawner_cooldown] at @s if entity @a[distance=0..16] if score @s souls_collected matches 0 run tag @s remove spawner_cooldown