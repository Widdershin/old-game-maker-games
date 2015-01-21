spause()
if string_length(keyboard_string) > 3
{
    keyboard_string = string_copy(keyboard_string,0,3)
}
keyboard_string = string_upper(string_lettersdigits(keyboard_string))
if keyboard_check(vk_enter)
{
    highscore_add(keyboard_string,score)
    sound_play(soScore)
    game_restart()
}
