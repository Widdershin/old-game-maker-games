firstid = file_text_open_read("FirstName.txt")
temp = 0
while(!file_text_eof(firstid))
{
    firstname[temp] = file_text_read_string(firstid)
    file_text_readln(firstid)
    temp += 1
}
firstnamecount = temp
lastid = file_text_open_read("LastName.txt")
temp = 0
while(!file_text_eof(lastid))
{
    lastname[temp] = file_text_read_string(lastid)
    file_text_readln(lastid)
    temp += 1
}
lastnamecount = temp
output = file_text_open_write("output.txt")
repeat(get_integer("How many should I make?",300))
{
firstran = irandom(firstnamecount-1)
if !choose(true,false,false,false,false)
{
lastran = irandom(lastnamecount-1)
}
else
{
lastran = firstran
}
file_text_write_string(output,firstname[firstran]+" "+lastname[lastran])
file_text_writeln(output)
}
game_end()
