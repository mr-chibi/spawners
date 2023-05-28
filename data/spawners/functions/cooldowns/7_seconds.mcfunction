# If spawner is "spawner_entity" then count each time it's less than spawner cooldown:
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown < 7_sec_cooldown spawner_cooldown run scoreboard players add @s spawner_cooldown 1

# If spawner is "spawner_entity" then, foreach time cooldown matches entity timer add one mob spawned:
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run scoreboard players add @s souls_collected 1
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run playsound minecraft:block.soul_sand.place master @a[distance=0..16] ~ ~ ~ 1 0.5

# If spawner is "spawner_entity" then, Spawn in mob:
execute as @e[type=minecraft:marker,tag=spawner,tag=zombie_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:zombie ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}
execute as @e[type=minecraft:marker,tag=spawner,tag=skeleton_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:skeleton ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}
execute as @e[type=minecraft:marker,tag=spawner,tag=spider_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:spider ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}
execute as @e[type=minecraft:marker,tag=spawner,tag=cave_spider_spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run summon minecraft:cave_spider ^ ^ ^2 {Tags:["spawner_mob"], DeathLootTable:"minecraft:empty"}

# Reset Cooldown:
execute as @e[type=minecraft:marker,tag=spawner,tag=!spawner_cooldown,tag=spawner_entity] at @s if entity @p[distance=0..16] if score @s spawner_cooldown = 7_sec_cooldown spawner_cooldown run scoreboard players set @s spawner_cooldown 0