var sName, sFind; 
sFind = argument0 

for (i = 0; i <1000; i += 1) 
{ 
sName = string_lower(script_get_name (i)) 
if sName = string_lower (sFind) 
return i 
} 
return -1 
