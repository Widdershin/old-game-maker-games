
rectX = mouse_x div tileSize * tileSize
rectY = mouse_y div tileSize * tileSize
draw_set_color(c_yellow)
draw_set_alpha(0.5)
draw_rectangle(rectX, rectY, rectX + tileSize - 1, rectY + tileSize - 1, 0)

draw_set_alpha(1)



for (i = 0; i < oPlayer.hp; i += 1)
{
    if i mod 2 = 0
        draw_set_color(c_red)
    else
        draw_set_color(merge_color(c_red,c_black,0.1))
        
    draw_rectangle(0 + i * t, 384, 0 + (i * t + t), room_height, 0)
    
}

if keyboard_check(ord("G")) && debug
{
    mp_grid_draw(grid)
}

draw_sprite(sOverlay,-1,0,0)

