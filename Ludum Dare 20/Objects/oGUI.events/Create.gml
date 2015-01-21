/*
    Creates all the buttons used in the GUI
*/
globalvar mouseheld, chill;
mouseheld = -1
x = 256
y = 616
a = 0
released = false
chill = false
if room != rEdit
{
    instance_create(x+8+24+a*48,y,oStopButton)
    a+=1
    instance_create(x+8+24+a*48,y,oStop1Button)
    a+=1
    instance_create(x+8+24+a*48,y,oJumpButton)
    a+=1
    instance_create(x+8+24+a*48,y,oLeftButton)
    a+=1
    instance_create(x+8+24+a*48,y,oRightButton)
    a+=1
    instance_create(x+8+24+a*48,y,oDisarmButton)
    a+=1
    instance_create(x+8+24+a*48,y,oHealButton)
    a+=1
    instance_create(x+8+24+a*48,y,oLevitateButton)
    a+=2
    instance_create(x+8+24+a*48,y,oRestartButton)
    a+=1
    instance_create(x+8+24+a*48,y,oMenuButton)
    a+=1
}
else
{
    instance_create(x+8+24+a*48,y,oDoorButton)
    a+=1
    instance_create(x+8+24+a*48,y,oButtonButton)
    a+=1

}
/*instance_create(x+8+24+a*48,y,oWarriorButton)
a+=1
instance_create(x+8+24+a*48,y,oRogueButton)
a+=1
instance_create(x+8+24+a*48,y,oMageButton)
a+=1
instance_create(x+8+24+a*48,y,oStopButton)
a+=1
instance_create(x+8+24+a*48,y,oStopButton)

