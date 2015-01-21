switch(mode)
{
    case skel:
    {
        if (prevMode != mode)
        {
            for (i = 0; i < ds_list_size(partList); i += 1)
            {
                show_message("DICKS")
                instance_create(0, 12 + i*32, oButton)
            }
        }
        break;
    }
    
    case anim:
    {
        if (prevMode != mode)
        {
            
        }
        break;
    }
    
    case map:
    {
        if (prevMode != mode)
        {
            
        }
        break;
    }    
}

prevMode = mode;
