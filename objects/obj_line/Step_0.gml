if(!place_meeting(x,y,obj_player)) place = true;
image_index = place;

if(place){
    var _time = get_timer() / 1000000;
    var _sinwave = (sin(_time * 54) + 1) / 2;
    var _rgb = merge_color(#B7B7B7,#FFFFFF,_sinwave);
    image_blend = _rgb;
} else {
	image_blend = c_white;
}