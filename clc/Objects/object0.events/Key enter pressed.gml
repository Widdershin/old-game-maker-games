plusposition = string_pos('+',keyboard_string)
string_part[1] = string_copy(keyboard_string,0,plusposition - 1)
string_part[2] = string_copy(keyboard_string,plusposition+1,10)
show_message(string_part[1]+'+'+string_part[2])
solution = real(string_part[1])+real(string_part[2])
keyboard_string = ''
