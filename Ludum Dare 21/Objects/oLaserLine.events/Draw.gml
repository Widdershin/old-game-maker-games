draw_sprite(sprite_index,-1,x,y)
if on
{
    with(leftlaser)
    {
        x = other.x
        y = other.y+16
        move_contact_solid(180,0)
        image_blend = c_red
    }
    with(rightlaser)
    {
        x = other.x+32
        y = other.y+16
        move_contact_solid(0,0)
        image_blend = c_red
    }
    draw_set_color(c_red)
    draw_line_width(x,y+16,leftlaser.x,leftlaser.y,3)
    draw_line_width(x+32,y+16,rightlaser.x,rightlaser.y,3)
    
    if collision_line(x,y+16,leftlaser.x-10,leftlaser.y,oPlayer,1,1)
    {
        gameover()
    }
    if collision_line(x+32,y+16,rightlaser.x+10,rightlaser.y,oPlayer,1,1)
    {
        gameover()
    }
    draw_sprite_ext(sLaser,-1,x+16,y+16,1,1,image_angle,c_red,1)
}
else
{
    leftlaser.image_blend = c_green
    rightlaser.image_blend = c_green
    leftlaser.x = x+16
    leftlaser.y = y+16
    rightlaser.x = x+16
    rightlaser.y = y+16
}


