# Cow:
tellraw @s [{"text": "Cow Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Cows"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 1"}}]
tellraw @s [{"text": ""}]

# Sheep:
tellraw @s [{"text": "Sheep Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Sheep"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 2"}}]
tellraw @s [{"text": ""}]

# Pig:
tellraw @s [{"text": "Pig Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Pigs"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 3"}}]
tellraw @s [{"text": ""}]

# Reset Command:
scoreboard players set @s type_spawner 0