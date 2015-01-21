runString = keyboard_string
spacePos = string_pos(" ",runString)
actionWord = string_letters(string_copy(runString,0,spacePos))
paramWord = string_letters(string_copy(runString,spacePos+1,string_length(runString)))

if spacePos = 0
{
    actionWord = runString
}

execute_string(actionWord+"('"+paramWord+"')")
keyboard_string = ""
