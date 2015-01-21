/*
    Sets the text box message to the win messages
*/
if keyboard_check(ord("L"))
{
    game_restart()
}
if out >= need && !done
{
    oTextBox.message = winmessage
    oTextBox.typed = 0
    oTextBox.typedelay = 15
    instance_create(x,y,oNext)
    done = 1
}
