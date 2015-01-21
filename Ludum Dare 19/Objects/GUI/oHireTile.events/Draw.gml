var tempid;
tempid = instance_create(-4000,-4000,staffid)
draw_set_font(fDetail)
draw_set_color(c3)
draw_sprite(sprite_index,-1,x,y)
draw_set_halign(fa_middle)
draw_text(x+23,y+2,staffid.jobname)
draw_set_halign(fa_left)
/*
draw_text(x+2,y+12,"$"+string(buildingid.price))
draw_sprite(sPeople,-1,x+3,y+22)
draw_text(x+8,y+22,buildingid.capacity)
if buildingid.outputtype = 'sci'
{
    draw_sprite(sSciIcon,-1,x+3,y+32)
}
if buildingid.outputtype = 'hap'
{
    draw_sprite(sHapIcon,-1,x+3,y+32)
}
draw_text(x+8,y+32,"+"+string(buildingid.output))
*/
with(tempid){instance_destroy()}
