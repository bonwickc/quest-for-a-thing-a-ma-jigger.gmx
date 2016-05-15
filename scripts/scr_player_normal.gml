#define scr_player_normal
scr_gameinputs();

//react to inputs
if (distance_to_object(obj_npc) > 0 && keyboard_check_released(vk_shift))
{
    state = states.inventory;
}

if (free)
{
movehorz = key_left + key_right;
hsp = movehorz * movespeed;

movevert = key_down - key_up;
vsp = movevert * movespeed;

scr_collision_objects();
scr_collision_enemy();

}

if (hp <=0) 
{
    obj_stickguy.state = states.death;
}

#define scr_collision_objects
//horizontal collision

//collision for road
if (place_meeting(x+hsp,y,obj_road))
{
    while(!place_meeting(x+sign(hsp),y,obj_road))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//collision for boulder
if(place_meeting(x+hsp,y,obj_boulder))
{
    while(!place_meeting(x+sign(hsp),y,obj_boulder))
    {  
        x += sign(hsp);
    }
    hsp = 0;
}

//collision for player house
if(place_meeting(x+hsp,y,obj_player_house))
{
    while(!place_meeting(x+sign(hsp),y,obj_player_house))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//collision for blacksmith
if (place_meeting(x+hsp,y,obj_blacksmith))
{
    while(!place_meeting(x+sign(hsp),y,obj_blacksmith))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//collision for general goods
if (place_meeting(x+hsp,y,obj_general_goods))
{
    while(!place_meeting(x+sign(hsp),y,obj_general_goods))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//collision for bar
if (place_meeting(x+hsp,y,obj_bar))
{
    while(!place_meeting(x+sign(hsp),y,obj_bar))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//collision for hospital
if (place_meeting(x+hsp,y,obj_hospital))
{
    while(!place_meeting(x+sign(hsp),y,obj_hospital))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

//vertical collision

//collision for road
if (place_meeting(x,y+vsp,obj_road))
{
    while(!place_meeting(x,y+sign(vsp),obj_road))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

//collision for boulder
if (place_meeting(x,y+vsp,obj_boulder))
{
    while(!place_meeting(x,y+sign(vsp),obj_boulder))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

//collision for players house
if(place_meeting(x,y+vsp,obj_player_house))
{
    while(!place_meeting(x,y+sign(vsp),obj_player_house))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

//collision for blacksmith
if(place_meeting(x,y+vsp,obj_blacksmith))
{
    while(!place_meeting(x,y+sign(vsp),obj_blacksmith))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

//collsion for general goods
if(place_meeting(x,y+vsp,obj_general_goods))
{
    while(!place_meeting(x,y+sign(vsp),obj_general_goods))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

//collision for bar
if(place_meeting(x,y+vsp,obj_bar))
{
    while(!place_meeting(x,y+sign(vsp),obj_bar))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

//colllison for hospital
if(place_meeting(x,y+vsp,obj_hospital))
{
    while(!place_meeting(x,y+sign(vsp),obj_hospital))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;
#define scr_collision_enemy
//collision with minion
if (place_meeting(x+hsp,y,obj_minion))
{
    while(!place_meeting(x+sign(hsp),y,obj_minion))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

if(place_meeting(x,y+vsp,obj_minion))
{
    while(!place_meeting(x,y+sign(vsp),obj_minion))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
#define scr_player_health_bar
var ph;
ph = (obj_stickguy.hp/obj_stickguy.maxhp) * 100;
draw_healthbar(15,15,80,35,ph,c_white,c_red,c_green,0,true,true);
#define scr_player_house_goto
if (global.checkpointr != noone)
{
    room_goto(global.checkpointr);
    if (object_exists(obj_stickguy))
    {
        obj_stickguy.x = global.checkpointx;
        obj_stickguy.y = global.checkpointy;
        obj_stickguy.hp = obj_stickguy.maxhp;
    }
}
else
{
    room_goto(rm_player_house);
    obj_stickguy.hp = obj_stickguy.maxhp;
    obj_stickguy.x = 100;
    obj_stickguy.y = 100;
}
obj_stickguy.state = states.normal;
#define scr_inventory
showinv = true;
obj_stickguy.free = false;
obj_stickguy.angle = false;
if keyboard_check_released(vk_shift)
{
    state = states.normal;
    showinv = false;
    obj_stickguy.free = true;
    obj_stickguy.angle = true;
}