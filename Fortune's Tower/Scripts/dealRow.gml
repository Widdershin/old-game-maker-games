row = argument0 // row to deal
rowSafe = false
for (i=0; i<row+1; i+=1)
{
    start = 7-row
    dealCard(start+i*2,row,0)
    if position[start+i*2,row].value = 0
    {
        rowSafe = true
    }
}

if rowSafe
{
    start = 7-row
    for (i=0; i<row+1; i+=1)
    {
        position[start+i*2,row].isSafe = true
    }
}

if row != 0
{
    for (i = 0; i < row+1; i += 1)
    {
        start = 7-row
        cardPos = start+i*2
        card = position[cardPos,row]
        for (j=-1; j<2; j+=2)
        {
            //
            if cardPos+j >= 0 && cardPos+j <= 14
            {
                cardCheck = position[cardPos+j,row-1]
                if cardCheck.value = card.value && !cardCheck.isGate
                {
                   card.burn = true
                   show_message(string(cardPos+j)+","+string(row-1))
                }
            }
        };
    }
}

multiple = true
oldValue = -1
start = 7-row
for (i=0; i<row+1; i+=1)
{ 
    value = position[start+i*2,row].value
    rowValue[row] += value
    if oldValue = -1
    {
        oldValue = value 
    }
    if value != oldValue
    {
        multiple = false
    }
    oldValue = value
}

if multiple
{
    rowValue[row] *= row+1
    rowMultiple[row] = true
}
