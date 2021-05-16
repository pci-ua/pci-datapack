# Envoie du message de Bienvenue
execute as @a[tag=!bvn] run tellraw @a ["",{"text":"Bienvenue à "},{"selector":"@s"},{"text":" sur le serveur"},{"text":" PC[","color":"aqua"},{"text":"i","color":"gold"},{"text":"]","color":"aqua"},{"text":" !"}]

# Rajout à l'équipe par défaut : pve (autre: dev,pvp)
team join pve @a[tag=!bvn]

# Anti-spam Bienvenue
tag @a[tag=!bvn] add bvn