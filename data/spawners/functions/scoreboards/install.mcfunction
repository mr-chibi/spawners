# Varibles:
scoreboard objectives add spawner_id dummy

#
scoreboard objectives add souls_collected dummy
scoreboard players set souls_limit souls_collected 15


# Cooldown Timer:
scoreboard objectives add spawner_cooldown dummy
scoreboard players set reset_cooldown spawner_cooldown 60
scoreboard players set 7_sec_cooldown spawner_cooldown 150

# Commands
scoreboard objectives add create_spawner trigger
scoreboard objectives add remove_spawner trigger
scoreboard objectives add type_spawner trigger
scoreboard objectives add redeem_spawner trigger