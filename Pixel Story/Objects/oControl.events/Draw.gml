
if showCursor
{
    rectX = mouse_x div tileSize * tileSize
    rectY = mouse_y div tileSize * tileSize
    draw_set_color(c_yellow)
    draw_set_alpha(0.5)
    draw_rectangle(rectX, rectY, rectX + tileSize - 1, rectY + tileSize - 1, 0)
    draw_set_alpha(1)
}



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


if newDisplay
{
    for(i = 0; i < room_width / t; i += 1)
    {
        for(j = 0; j < room_height / t; j += 1)
        {
            draw_sprite(sPixel, 0, i * t, j * t)
        }
    }
}


draw_sprite(sOverlay,-1,0,0)

if keyboard_check_pressed(ord("H"))
{
    if recording == true
    {
        recording = false
        gifCount += 1
        frameCount = 0
    }
    else if recording == false
    {
        recording = true
        show_message("Recording")
    }
}

if recording
{
    screen_save(string(gifCount)+"_screen_"+string(frameCount)+".bmp")
    frameCount += 1
}

