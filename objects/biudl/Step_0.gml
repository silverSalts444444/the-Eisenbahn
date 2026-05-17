if (global.sc1 != noone && global.sc2 != noone){
	var dist = point_distance(global.sc1.x, global.sc1.y, global.sc2.x, global.sc2.y);
	it = string((dist/20) * global.sc1.income * global.sc2.income* global.income_multiplier);
    ct = string(floor(dist * 1.5));

} else {
	it = "";
	ct = "";
}