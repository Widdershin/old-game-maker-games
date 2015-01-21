for (i = 0; i < ds_stack_size(debugStack); i += 1)
{
    draw_set_color(c_white)
    draw_text(2, 14 * i, ds_stack_pop(debugStack))   
}
if mouse_check_button(mb_right)
{

    screen_save("screen_"+string(gifCount)+"_"+string(frameCount)+".png")
    frameCount += 1   
    print("recording")
}
if mouse_check_button_released(mb_right)
{
    gifCount += 1
    frameCount = 0
}
