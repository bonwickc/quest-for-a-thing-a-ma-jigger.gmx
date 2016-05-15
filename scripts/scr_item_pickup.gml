#define scr_item_pickup
for (i = 0; i < maxitems; i += 1)
{
    if (global.inventory[i] == -1)
    {
        global.inventory[i] = argument0;
        return(1)
    }
}
return(0);

#define scr_item_drop
for (i = 0; i < maxitems; i += 1)
{
    if (global.inventory[i] == argument0)
    {
        global.inventory[i] = -1;
        return(1)
    }
}
return(0);

#define scr_item_check
for (i = 0; i < maxitems; i += 1)
{
    if (global.inventory[i] == argument0)
    {
        return(1)
    }
}
return(0);
#define scr_item_pickup_slot
//scr_item_pickup_slot(item,slot)
if (global.inventory[argument1] == -1)
{
    global.inventory[argument1] = argument0;
    return(1);
}
return(0);

#define scr_item_drop_slot
//scr_item_drop_slot(slot)
if (global.inventory[argument0] != -1)
{
    global.inventory[argument0] = -1;
    return(1);
}
return(0);
#define scr_item_use
if (global.inventory[argument0] = 0)
{
    if (obj_stickguy.hp < obj_stickguy.maxhp)
    {
        obj_stickguy.hp += 10;
        global.inventory[argument0] = -1;
    }      
}