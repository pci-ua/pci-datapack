#Tue toutes entités offensives trop près du spawn :
# le spawn est dans l'overworld
# aux coordonées -122.0 68.0 31.0
# sur un rayon de 60
# toutes créatures offensives
# n'ayant pas leur IA désactivé
execute in minecraft:overworld positioned -122.0 68.0 31.0 as @e[distance=..60] if predicate pci_basics:spawnprotect/offensive_mob if predicate pci_basics:spawnprotect/have_ia run kill @s

#Tue tous les explosifs de quelconque source à proximité du spawn :
# le spawn est dans l'overworld
# aux coordonées -122.0 68.0 31.0
# sur un rayon de 60
# tous projectiles offensif
execute in minecraft:overworld positioned -122.0 68.0 31.0 as @e[distance=..60] if predicate pci_basics:spawnprotect/dangerous_projectile run kill @s
