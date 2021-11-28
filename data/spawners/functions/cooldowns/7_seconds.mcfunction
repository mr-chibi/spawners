#
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown < 7_sec_cooldown spawner_cooldown run scoreboard players add @s spawner_cooldown 1

#
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run scoreboard players add @s souls_collected 1
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run tellraw @a[distance=0..16] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Spawners", "color":"#188AD8"}, {"text": "] ", "color": "white"}, {"text": "Spawned in mob #"}, {"score":{"name":"@s", "objective": "souls_collected"}}, {"text": " from custom spawner."}]
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run playsound minecraft:block.soul_sand.place master @a[distance=0..16] ~ ~ ~ 1 0.5

#
execute as @e[type=minecraft:marker,tag=spawner,tag=cow_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:cow ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}
execute as @e[type=minecraft:marker,tag=spawner,tag=sheep_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:sheep ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}
execute as @e[type=minecraft:marker,tag=spawner,tag=pig_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:pig ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}

#
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if score @p spawner_id = @s spawner_id if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run scoreboard players set @s spawner_cooldown 0