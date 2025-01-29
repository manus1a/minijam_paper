var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_jump = keyboard_check_pressed(vk_space);

var _move = _key_right - _key_left;

hsp = _move * walksp;

//collision horizontal
if (place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x =x + sign(hsp);
	}
	hsp=0;
}

x=x+hsp;