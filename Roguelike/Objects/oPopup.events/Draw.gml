if popuptype = "equip"
{
    temp = 0
    repeat(equipcount)
    {
        if cursor = temp {draw_text(5,temp*15+15,"> "+equipslot[temp]+": ")}
                    else {draw_text(5,temp*15+15,"  "+equipslot[temp]+": ")}
        temp += 1
    }
}
