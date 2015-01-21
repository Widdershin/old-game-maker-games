if !iso
{
    cx = x/32
    cy = y/32
}
if iso = false && isoprev = true
{
    x = origx
    y = origy    
}
if iso = true && isoprev = false
{
    origx = x
    origy = y
    if cy mod 2
    {
        dx = 256 + cx*s/2 - cy*s/2
    }
    else
    {
        dx = 256 + cx*s/2 - cy*s/2
    }
    if cx mod 2
    {
        dy = 64 + cy*s/4 + cx*s/4
    }
    else
    {
        dy = 64 + cy*s/4 + cx*s/4
    }
    
    
    //show_message("DICKS")
}
isoprev = iso

