if progress != 100 && progspeed = 0
{
    fileid = file_text_open_write(filenamev)
    clicked = writebutton
    varnum = instance_number(variable)
    varnumt = varnum
    repeat(varnum)
    {
        varid = instance_find(variable,varnumt-1)
        varname = varid.text_draw
        if !is_string(varname)
        {
        varname = '"'+varname+'"'
        }
        file_text_write_string(fileid,varid.prefix+varname)
        file_text_writeln(fileid)
        varnumt -= 1
    }
    boolnum = instance_number(boolean)
    boolnumt = boolnum
    repeat(boolnum)
    {
        boolid = instance_find(boolean,boolnumt-1)
        file_text_write_string(fileid,boolid.bool+' = '+string(boolid.toggle))
        file_text_writeln(fileid)
        boolnumt -= 1
    }
    file_text_close(fileid)
    progress = 0
    progspeed = 2
}
