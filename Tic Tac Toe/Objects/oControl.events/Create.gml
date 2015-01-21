count = -1
globalvar  hosting;
hosting = show_message_ext('','Host Game','Join Game',0)
if hosting = 1
{
    mplay_init_tcpip('127.0.0.1')
    if mplay_connect_status() = 2 {show_message("Connection Initialized")}
    user = get_string("Username: ","")
    mplay_session_create("hello",2,user)
}
if hosting = 2
{
    ip = get_string("IP: ","")
    connection = mplay_init_tcpip(ip)
    user = get_string("Username: ",0)
    mplay_session_find()
    mplay_session_join(0,user)
}
