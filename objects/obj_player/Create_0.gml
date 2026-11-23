hspd = 0;
vspd = 0;
grav = 1;
state = "idle";

grav_dir = 1;
move_dir = 0;
move_spd = 0;
move_spd_max = 4;
acc = .2;
dcc = .2;

coyote_time_max = 10;
coyote_time = 0;

rez_time_max = 60;
rez_time = rez_time_max;

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