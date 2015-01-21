if mplay_player_find() != count {show_message(string(mplay_player_name(count+1))+" connected.")}
count = mplay_player_find()
if keyboard_check_pressed(ord("T"))
{
    message = get_string("Message: ",0)
    mplay_message_send(0,0,message)
}
if mplay_message_receive(0)
{
    show_message(mplay_message_name()+mplay_message_value())
}

