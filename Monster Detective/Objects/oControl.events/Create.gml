globalvar t, inDialogue, dialogueInst, dialogueInd;
t = 32
room_speed = 60
transition_kind = 21

view_wview = display_get_width() / 2
view_hview = display_get_height() / 2

inDialogue = false
dialogueInst = -1
dialogueInd = 0
cursor = 0

dBoxW = (room_width / 3) * 2
dBoxH = (room_height / 5) * 2
dBoxBColor = $C6E7F4
dBoxTColor = c_black
dBoxOColor = c_black
dBoxSColor = $65BBE0

//BGR
//RGB

count = 0

prevDialogue = inDialogue
