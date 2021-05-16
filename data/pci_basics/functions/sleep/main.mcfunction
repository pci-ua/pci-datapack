# Reset ( avoid unexpected behavior )
scoreboard players set :all PCi_sleep_count 0
scoreboard players set :result PCi_sleep_count 0
scoreboard players set :sleeping PCi_sleep_count 0

# Count ( ignore creative and spec players, and must be in overworld)
execute in minecraft:overworld positioned 0 0 0 as @a[gamemode=!creative,gamemode=!spectator,distance=..99999999] run tag @s add pci_sleeper
execute as @a[tag=pci_sleeper] run scoreboard players add :all PCi_sleep_count 1
execute as @a[tag=pci_sleeper,nbt={SleepTimer:100s}] run scoreboard players add :sleeping PCi_sleep_count 1

# Display (show or not and put the values)
execute if score :sleeping PCi_sleep_count matches 1.. store result bossbar minecraft:pci_sleep max run scoreboard players get :all PCi_sleep_count
execute if score :sleeping PCi_sleep_count matches 1.. store result bossbar minecraft:pci_sleep value run scoreboard players get :sleeping PCi_sleep_count
execute if score :sleeping PCi_sleep_count matches 1.. run bossbar set minecraft:pci_sleep visible true
execute if score :sleeping PCi_sleep_count matches 1.. run bossbar set minecraft:pci_sleep players @a
execute unless score :sleeping PCi_sleep_count matches 1.. run bossbar set minecraft:pci_sleep visible false

# Calc the prctage ( must use precision due to integer only calc )
scoreboard players operation :result PCi_sleep_count = :sleeping PCi_sleep_count
scoreboard players operation :result PCi_sleep_count *= :precision PCi_sleep_count
scoreboard players operation :result PCi_sleep_count /= :all PCi_sleep_count

# Change time ( skip time, then change weather )
execute if score :result PCi_sleep_count matches 50.. run time add 100t
execute if score :result PCi_sleep_count matches 50.. run weather thunder 1
