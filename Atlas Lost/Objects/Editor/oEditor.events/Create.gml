globalvar mode, prevMode;
globalvar skel, anim, map;
globalvar partList;

skel = 0
anim = 1
map = 2

mode = skel
prevMode = -4

partList = ds_list_create()

addPart(sTorso)
addPart(sLeg)
addPart(sFoot)
addPart(sArm)
addPart(sForeArm)
