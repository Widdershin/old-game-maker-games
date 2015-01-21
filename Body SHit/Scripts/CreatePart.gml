//argument0 
var returnVar;

returnVar = instance_create(x, y, argument1)
ds_list_add(argument0, returnVar)
returnVar.offsetX = argument2
returnVar.offsetY = argument3
returnVar.depth = argument4
returnVar.angleOffset = argument6

show_debug_message(argument4)

if argument5     == 0
{
    returnVar.parent = self.id
}
else
{
    returnVar.parent = argument5
}

return returnVar
