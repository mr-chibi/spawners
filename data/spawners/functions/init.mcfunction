# Enabled Commands:
execute as @a at @s run scoreboard players enable @s create_spawner
execute as @a at @s run scoreboard players enable @s remove_spawner
execute as @a at @s run scoreboard players enable @s type_spawner
execute as @a at @s run scoreboard players enable @s redeem_spawner

# Commands:
execute as @a at @s[scores={create_spawner=1..}] run function spawners:commands/create
execute as @a at @s[scores={remove_spawner=1..}] run function spawners:commands/remove
execute as @a at @s[scores={type_spawner=1..}] run function spawners:commands/type
execute as @a at @s[scores={redeem_spawner=1..}] run function spawners:commands/redeem

# Mobs Cooldowns:
function spawners:cooldowns/7_seconds

# Spawner Cooldown:
function spawners:cooldowns/spawner

# Particles:
execute as @e[type=minecraft:marker,tag=spawner] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.75 0.50 0 3