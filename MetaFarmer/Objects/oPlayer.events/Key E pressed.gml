var xRound, yRound, target;
xRound = round((x+tS)/tS)*tS
target = instance_position(crossID.x,crossID.y,oGrass)
show_debug_message(string(target))
if moving = false
{
execute_string(string(equip.actionName)+"("+string(target)+")")
}
