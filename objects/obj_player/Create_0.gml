hspd = 0;
vspd = 0;
grav = 3;
state = "idle";

grav_dir = 1;
move_dir = 0;
move_spd = 0;
move_spd_max = 2;
acc = .28;
dcc = .28;

coyote_time_max = 10;
coyote_time = 0;

approach = function(val1 = 0, val2 = 0, amount = 0){
	if(val1 < val2){
		val1 += amount
		if(val1 > val2)
			return val2;
	} else{
		val1 -= amount
		if(val1 < val2)
			return val2;
	}
	return val1;
}