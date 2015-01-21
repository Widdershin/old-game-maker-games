
if progspeed = 0 && progress != 100
{
fileid = file_text_open_read(filenamev)
runcount = 0    
vara = instance_number(variable)
vart = vara
clicked = loadbutton
synclick = 0

repeat(vara)
{                                           
    varid = instance_find(variable,vart-1)
    position_destroy(varid.x+10,varid.y+10)
    vart -= 1
}

boola = instance_number(boolean)
boolt = boola

repeat(boola)
{
    boolid = instance_find(boolean,boolt-1)
    position_destroy(boolid.x,boolid.y)
    boolt -= 1
}

while(file_text_eof(fileid) = false)
{
    rstring = file_text_read_string(fileid)
    if rstring != ''
    {
        if string_pos('=',rstring)
        {
        syntax = '='
        }
        if string_pos(' = ',rstring)
        {
        syntax = ' = '
        }
        if string_pos(': ',rstring)
        {
        syntax = ': '
        }
        
        if !synclick
        {
            synclick = true
        }
        
        if syntax != 0
        {
        synlen = string_length(syntax)
        eqpos = string_pos(syntax,rstring)
        rstringn = string_copy(rstring,0,eqpos)
        rstringv = string_copy(rstring,eqpos+synlen,string_length(rstring)-(eqpos-synlen))
        
        if is_real(real(rstringv)) && !string_pos('height',rstringn) && !string_pos('width',rstringn)
        {
            if real(rstringv) = 0 or real(rstringv) = 1
            {
                objcreate = boolean
                rstringv = real(rstringv)
            }
            else
            {
                objcreate = variable
            }
    }
    else
    {
        objcreate = variable
    }
    if objcreate = boolean && boolcreate = 1
    {
        xcoord = 323
        boolcreate = 0
        ycoord = booly
        runcount -= 1
    }
    else if objcreate = boolean && boolcreate = 0
    {
        xcoord = 16
        boolcreate = 1
        ycoord = 16+(48*(runcount))
        booly = ycoord
    }
    else
    {
        xcoord = 16
        ycoord = 16+(48*runcount)
    }
    create(xcoord,ycoord,objcreate,rstringn,rstringv)
    runcount += 1
    }
    file_text_readln(fileid)

}
file_text_close(fileid) // Closes fileid

progress = 0
progspeed = 2
}
}
