if place_free(x,y+1) && stepready
{
y += 1
if !strafe
{
facing_direction = 'down'
}
stepready = false
}
