if playmode 
{
    if enemyspawntime < 1
    {
    enemyspawn()
    }
    enemyspawntime -= 1
    
    if mouse_check_button_pressed(mb_left)
    {
        dropstuff(mouse_x,mouse_y)
    }
}
