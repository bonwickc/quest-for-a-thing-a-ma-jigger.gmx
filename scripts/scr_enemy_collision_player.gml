if (place_meeting(x+hsp,y,obj_stickguy))
{
    obj_stickguy.hp = obj_stickguy.hp - dmg;
    hsp = 0;
}

if(place_meeting(x,y+vsp,obj_stickguy))
{
    obj_stickguy.hp = obj_stickguy.hp - dmg;
    vsp = 0;
}

