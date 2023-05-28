# Zombie:
tellraw @s [{"text": "Zombie Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Zombies"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 1"}}]
tellraw @s [{"text": ""}]

# Skeleton:
tellraw @s [{"text": "Skeleton Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Skeletons"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 2"}}]
tellraw @s [{"text": ""}]

# Spider:
tellraw @s [{"text": "Spider Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Spider"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 3"}}]
tellraw @s [{"text": ""}]

# Cave Spider:
tellraw @s [{"text": "Cave Spider Spawner:", "bold": true, "color": "yellow"}]
tellraw @s [{"text": "Description: ", "color": "gray"}, {"text": "Summons Cave Spider"}]
tellraw @s [{"text": "[Redeem]", "color": "green", "clickEvent":{"action":"run_command","value":"/trigger redeem_spawner set 4"}}]
tellraw @s [{"text": ""}]

# Reset Command:
scoreboard players set @s type_spawner 0