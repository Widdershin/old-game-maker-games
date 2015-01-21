var firstran, lastran, firstname, firstid, lastid, lastname;
firstid = file_text_open_read("FirstName.txt")
temp = 0
while(!file_text_eof(firstid))
{
    firstname[temp] = file_text_read_string(firstid)
    file_text_readln(firstid)
    temp += 1
}
file_text_close(firstid)
firstnamecount = temp
lastid = file_text_open_read("LastName.txt")
temp = 0
while(!file_text_eof(lastid))
{
    lastname[temp] = file_text_read_string(lastid)
    file_text_readln(lastid)
    temp += 1
}
file_text_close(lastid)
lastnamecount = temp
firstran = irandom(firstnamecount-1)
if !choose(true,false,false,false,false)
{
    lastran = irandom(lastnamecount-1)
}
else
{
    lastran = firstran
}
return firstname[firstran]+" "+lastname[lastran]
