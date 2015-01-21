if inDialogue
{
    count = dialogueInst.dialogue[dialogueInd, 1]
    statement = dialogueInst.dialogue[dialogueInd, 0]
    if keyboard_check_pressed(oPlayer.upKey)
    {
        cursor -= 1
    }
    if keyboard_check_pressed(oPlayer.downKey)
    {
        cursor += 1
    }
    if cursor < 0
    {
        cursor = count - 1
    }
    if cursor > count - 1
    {
        cursor = 0
    }
    
    if keyboard_check_pressed(oPlayer.doKey) and prevDialogue
    {
        dialogueInd = dialogueInst.dialogue[dialogueInd, (cursor * 2) + 3]
    }
    
    switch(statement)
    {
        case "[exit]": inDialogue = false; break;
        
    }
}
else
{
    dialogueInd = 0
    dialogueInst = 0
}

prevDialogue = inDialogue
