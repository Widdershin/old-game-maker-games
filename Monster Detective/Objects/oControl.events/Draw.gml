if inDialogue
{
    draw_set_color(dBoxBColor)
    x1 = view_xview + view_wview / 6
    y1 = view_yview + view_hview / 5 * 3
    x2 = view_xview + (view_wview / 6) * 5
    y2 = view_yview + view_hview
    
    xSpacing = 5
    ySpacing = 5

    
    draw_rectangle(x1, y1, x2, y2, 0)
    
    y2space = y1 + string_height_ext(statement, -1, (x2 - x1) - xSpacing * 2) + ySpacing * 2
    
    draw_set_color(dBoxSColor)
    draw_rectangle(x1, y1, x2, y2space, 0)
    
    draw_set_font(fDialogue)
    
    draw_set_color(dBoxOColor)
    draw_rectangle(x1, y1, x2, y2, 1)
    
    
    x3 = x1 + xSpacing
    y3 = y1 + ySpacing
    
    lineSpace = 15
    
    draw_set_color(dBoxTColor)
    
    draw_text_ext(x3, y3, statement, -1,  (x2 - x1) - xSpacing * 2)
    count = dialogueInst.dialogue[dialogueInd, 1]
    for(i = 0; i < count; i += 1)
    {
        if cursor = i
        {
            appendText = "> "
        }
        else
        {
            appendText = "- "
        }
        response = dialogueInst.dialogue[dialogueInd, (i * 2) + 2]
        draw_text_ext(x3, y2space + ySpacing + (i * lineSpace), appendText + response, -1, (x2 - x1) - xSpacing * 2)
    }
    
    draw_text(view_xview + 5, view_yview + 5, string(dialogueInd) + "#" + string(count))
    
    /*draw_rectangle((room_width / 2) - (dBoxW / 2), room_height - dBoxH, (room_width / 2) + (dBoxW / 2), room_height, 0)
    draw_set_color(dBoxOColor)
    draw_rectangle((room_width / 2) - (dBoxW / 2), room_height - dBoxH, (room_width / 2) + (dBoxW / 2), room_height, 1)*/
}
