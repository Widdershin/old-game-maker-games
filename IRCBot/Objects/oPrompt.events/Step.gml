var temp, arg;
if keyboard_check_pressed(vk_enter)
{
    strraw = keyboard_string
    spcnum = string_count(" ",strraw)
    if spcnum 
    {
        spcpos = string_pos(" ",strraw)
        strcmd = string_copy(strraw,0,spcpos)
        strarg = string_copy(strraw,spcpos+1,string_length(strraw)-spcpos+1)
    }
    else {strcmd = strraw}
    temp = 1
    arg[0] = 0
    strtmp = strarg
    if spcnum > 1
    {
        repeat(spcnum-1)
        {
            arg[temp] = string_copy(strtmp,0,string_pos(" ",strtmp)-1)
            strtmp = string_delete(strtmp,0,string_pos(" ",strtmp)+1)
            temp += 1
            arg[0] += 1
        }
    }
    ind = script_get_index("r"+strcmd)
    //if ind
    //{
        strexe = "script_execute("+string(ind)
        temp = 1 
        repeat(arg[0])
        {
            strexe += ","+arg[temp]
            temp += 1
        }
        strexe += ")"
        //execute_string(strexe)
        print(strexe)
    //}
    //else {error()}
    lastcmd = keyboard_string
    keyboard_string = ""
}
