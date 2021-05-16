#Gestion tag
## gestion tag sortie spawn
execute positioned -122.0 68.0 31.0 run tag @a[tag=spawn_zone,tag=not_spawn_zone,distance=50..] remove spawn_zone
## gestion tag entrée spawn
execute positioned -122.0 68.0 31.0 run tag @a[tag=spawn_zone,tag=not_spawn_zone,distance=..50] remove not_spawn_zone


#Gestion entrée spawn
## message d'information
execute positioned -122.0 68.0 31.0 as @a[tag=!spawn_zone,distance=..50] run tellraw @s ["",{"text":"Entrée zone : ","color":"green"},{"text":"spawn","color":"green","hoverEvent":{"action":"show_text","contents":"Explosions & créatures hostiles désactivés"}}]
## anti-grief [on]: adventure
execute positioned -122.0 68.0 31.0 as @a[tag=!spawn_zone,distance=..50] run gamemode adventure @s[gamemode=survival]
## ajout tag pour ne pas spam
execute positioned -122.0 68.0 31.0 as @a[tag=!spawn_zone,distance=..50] run tag @s add spawn_zone


#Gestion sortie spawn
## message d'information
execute positioned -122.0 68.0 31.0 as @a[tag=!not_spawn_zone,distance=50..] run tellraw @s ["",{"text":"Sortie zone : ","color":"red"},{"text":"spawn","color":"red","hoverEvent":{"action":"show_text","contents":"Explosions & créatures hostiles désactivés"}}]
## anti-grief [off]: survie
execute positioned -122.0 68.0 31.0 as @a[tag=!not_spawn_zone,distance=50..] run gamemode survival @s[gamemode=adventure]
## ajout tag pour ne pas spam
execute positioned -122.0 68.0 31.0 as @a[tag=!not_spawn_zone,distance=50..] run tag @s add not_spawn_zone