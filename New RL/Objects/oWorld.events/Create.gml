globalvar item, itemnum, sprites, torso, legs, boots, helm;

torso = 0
legs  = 1
boots = 2
helm  = 3

sprites[0] = sTorso
sprites[1] = sLegs
sprites[2] = sBoots
sprites[3] = sHelm

//newitem(type,number,name,armour/damage,value)
set = 0
newitem(torso, set, "Villager Shirt", 3, 5)
newitem(legs, set, "Villager Pants", 2, 4)
newitem(boots, set, "Villager Boots", 1, 2)


