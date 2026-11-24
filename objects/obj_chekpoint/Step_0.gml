image_index = ckpt;
//var _room_place = instance_place(xstart,ystart,obj_room);
//if(_room_place.playing == true){
    //self.ckpt = true;
//} else {
	//self.ckpt = false;
//}

if(ckpt){
    var _time = get_timer() / 1000000;
    var _sinwave = (sin(_time * 60) + 1) / 2;
    var _rgb = merge_color(c_white,#68C3FF,_sinwave);
    image_blend = _rgb;
} else {
	image_blend = c_white;
}