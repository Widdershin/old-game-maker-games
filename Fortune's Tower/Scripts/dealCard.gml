var r, c, gate;
r = argument0 //row position
c = argument1 //column position
gate = argument2 //gate true/false
value = ds_list_find_value(deck,0)
ds_list_delete(deck,0)
newCard = instance_create(ox+(r*sx),oy+(c*sy),oCard)
newCard.value = value
newCard.isGate = gate
newCard.r = c
newCard.c = r
position[r,c] = newCard
show_debug_message(ds_list_size(deck))
