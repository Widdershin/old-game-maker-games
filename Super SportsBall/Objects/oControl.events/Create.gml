//execute_file(object_get_name(object_index) + "Create.txt")

globalvar blah, t, teamColor;
blah = false
t = 32

joy_init()

teamColor[0] = c_aqua
teamColor[1] = c_red

//view_enabled = true
view_visible[0] = true

view_wport[0] = display_get_width()
view_hport[0] = display_get_height()

aspectRatio = display_get_width() /  display_get_height()


/*
player = instance_create(room_width / 2 - t * 11, t * 10, oPlayer)
player.name = "Nick"
player.team = 0
player.color = teamColor[player.team]
player.gamepad = false

player = instance_create(room_width / 2 - t * 12, t * 10, oPlayer)
player.name = "Camp"
player.team = 0
player.color = teamColor[player.team]
player.gamepad = 1

player = instance_create(room_width / 2 + t * 11, t * 10, oPlayer)
player.name = "Damin"
player.team = 1
player.color = teamColor[player.team]
player.gamepad = 2

player = instance_create(room_width / 2 + t * 12, t * 10, oPlayer)
player.name = "Christian"
player.team = 1
player.color = teamColor[player.team]
player.gamepad = 3

goal = instance_create(64, 224, oGoal)
goal.team = 0
goal.color = teamColor[goal.team]

goal = instance_create(896, 224, oGoal)
goal.team = 1
goal.color = teamColor[goal.team]

instance_create(room_width / 2, room_height / 2, oBall)


