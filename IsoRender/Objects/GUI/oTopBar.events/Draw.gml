draw_sprite(sprite_index,-1,x,y)
if renderTypeIso = false
{
    renderTypeString = "Tile"
}
if renderTypeIso = true
{
    renderTypeString = "Iso"
}
draw_text(x+68,y+4,"Render Type = "+renderTypeString)
