#define scr_gameinputs
///get the player's input for side scroll
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_up = keyboard_check(ord('W'));
key_down = keyboard_check(ord('S'));
key_attack = keyboard_check_released(vk_space);

#define scr_gameinputs_direction_facing
//get players inputs for plains
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_down = keyboard_check(vk_down);
key_up = -keyboard_check(vk_up);