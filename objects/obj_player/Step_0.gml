var _right  = keyboard_check(ord("D"));
var _left   = keyboard_check(ord("A"));
var _up     = keyboard_check_pressed(ord("W"));
var _move   = (_right - _left) != 0;

vspd = grav_dir * grav;
if(_up){
    grav_dir *= -1;
}

if(_move){
    move_dir = point_direction(0,0,_right - _left,0);
    move_spd = approach(move_spd,move_spd_max,acc);
} else {
	move_spd = approach(move_spd,0,dcc);
}

hspd = lengthdir_x(move_spd,move_dir);
