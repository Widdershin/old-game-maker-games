//execute_file(object_get_name(object_index) + "Step.txt")

ball = instance_place(x, y, oBall)
if ball
{
	show_message('GOAL')
	game_restart()
}
