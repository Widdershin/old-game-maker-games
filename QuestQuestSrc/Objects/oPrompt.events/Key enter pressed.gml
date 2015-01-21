runString = keyboard_string
spaceCount = string_count(" ",runString)+1
repeat(spaceCount)
spacePos = string_pos(" ",runString)
actionWord = string_letters(string_copy(runString,0,spacePos))
paramWord = string_letters(string_copy(runString,spacePos+1,string_length(runString)))
if spacePos = 0
{
    actionWord = runString
}
actionWordReal = script_get_index("act"+actionWord)
if script_exists(actionWordReal)
{script_execute(actionWordReal,paramWord)}
else {error()}
lastcmd = keyboard_string
keyboard_string = ""
