time = 0

globalvar gamepadID;

gamepadID = -1
if joystick_exists(2)
{
    gamepadID = 2   
}
if joystick_exists(1)
{
    gamepadID = 1
}
