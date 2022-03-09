tellraw @a ["",{"text":" ✳ ","color":"green"},"Bienvenue à ",{"selector":"@s"}," sur ",{"text":"PC[","color":"#008080"},{"text":"i","color":"#FA9800"},{"text":"]","color":"#008080"},{"text":" ✳ ","color":"green"}]
tellraw @s {"text":"Bienvenue à toi, pour le wiki et toutes les info. : http://projetcohesion.info/projet/minecraft","clickEvent":{"action":"open_url","value":"http://projetcohesion.info/projet/minecraft"}}
tellraw @s {"text":"Tu dispose d'un bonus d'une minute de résistance et de vitesse pour débuter sans tranquillement","color":"#AAAAAA","itatlic":"true"}}
effect give @s minecraft:resistance 60 0 true
effect give @s minecraft:speed 60 2 true
