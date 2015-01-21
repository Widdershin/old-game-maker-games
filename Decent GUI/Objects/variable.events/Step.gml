if suffix = false
{
prefix = prefix+syntax
suffix = true
}
    
/*        
if (real(target) != id && var_enter) 
{
    text_draw = keyboard_string+" = ";
    var_enter = false;
}
*/

prefixpos = string_pos(prefix,text_draw);


text_draw = string_delete(text_draw,prefixpos,string_length(prefix));
//Sam was here.

str_len = string_length(keyboard_string);
if (str_len > str_limit)
{
    keyboard_string = string_delete(keyboard_string,str_limit,str_len - str_limit);
}

