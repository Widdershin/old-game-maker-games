var temp;
arg = argument0
ret = ""
temp = 0
repeat(matcount)
{
    if string_pos(matlist[temp,0],arg)
    {
        ret = matlist[temp,1]+" "
    }
    temp += 1
}
temp = 0
repeat(itemcount)
{
    if string_pos(itemlist[temp,0],arg)
    {
        ret = ret+itemlist[temp,1]
    }
    temp += 1
}

return ret;
