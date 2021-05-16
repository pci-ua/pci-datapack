bossbar add pci_sleep "Certain veulent dormir !"
bossbar set minecraft:pci_sleep color white
bossbar set minecraft:pci_sleep players @a
bossbar set minecraft:pci_sleep style progress
bossbar set minecraft:pci_sleep visible false

scoreboard objectives add PCi_sleep_count dummy

scoreboard objectives remove PCi_sleep_count

scoreboard players set :all PCi_sleep_count 0
scoreboard players set :sleeping PCi_sleep_count 0
scoreboard players set :result PCi_sleep_count 0
scoreboard players set :precision PCi_sleep_count 100