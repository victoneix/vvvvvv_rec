var _right  = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _left   = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _up     = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
var _down   = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var _move   = (_right - _left) != 0;
var _ground = place_meeting(x,y+grav_dir,obj_collision);
if(keyboard_check_pressed(vk_escape)) game_end();
if(hspd != 0) image_xscale = sign(hspd);

if(place_meeting(x,y,obj_spiky)) state = "daed";
switch (state) {
	case "idle":
        vspd += grav_dir * grav;
        vspd = clamp(vspd, -6,6);
        if(_ground){
            coyote_time = coyote_time_max;
        } else {
        	coyote_time--;
        }
        
        if(coyote_time > 0 && (_up || _down)){
            if(grav_dir == 1){
                audio_play_sound(snd_jump,0,0);
            } else if(grav_dir == -1){
                audio_play_sound(snd_jump2,0,0);
            }
            grav_dir *= -1;
            vspd = 0;
        }
        
        if(_move){
            move_dir = point_direction(0,0,_right - _left,0);
            move_spd = approach(move_spd,move_spd_max,acc);
            sprite_index = spr_player_move;
        } else {
        	move_spd = approach(move_spd,0,dcc);
            sprite_index = spr_player_idle;
        }
        
        if(vspd != 0){
            vspd = approach(vspd,grav,acc); 
        } else {
        	vspd = approach(vspd,0,dcc); 
        }
        
        hspd = lengthdir_x(move_spd,move_dir); 
        image_yscale = grav_dir;  
    break;

    case "daed":
        hspd = 0;
        vspd = 0;
        rez_time--;
        sprite_index = spr_player_daed;
        if(rez_time >= 59) audio_play_sound(snd_hurt,0,0);
        if(rez_time <= 0){
            state = "idle";
            x = xstart;
            y = ystart;
            hspd = 0;
            vspd = 0;
            move_spd = 0;
            rez_time = rez_time_max;
        }
    break;
}


if(x < -12){
    x = room_width + 12;
} else if(x > room_width + 12){
	x = -12;
}

if(y < -21){
    y = room_height + 21;
} else if(y > room_height + 21){
	y = -21;
}