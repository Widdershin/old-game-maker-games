/*
This event should be placed in the draw event of the platform character.
It draws the "flySpeed" bar and the character sprite.
*/
//draws the sprite
draw_sprite(sprite_index,-1,x,y)
if canRun
{
  xOffset=80
  if player=1
    yOffset=120
  else
    yOffset=143
  //draw the "flySpeed" bar, which shows how much speed the character has acquired while holding the "run" button
  draw_healthbar(view_xview[0]+224+xOffset,view_yview[0]+432+yOffset,view_xview[0]+400+xOffset,view_yview[0]+450+yOffset,flySpeed,make_color_rgb(0,64,128),c_blue,c_aqua,0,1,1)
}