if (global.sc1 != noone && global.sc2 != noone){
	var dist = point_distance(global.sc1.x, global.sc1.y, global.sc2.x, global.sc2.y);
    var cost = floor(dist * 1.5);
	show_debug_message(cost);

    if (global.money >= cost) {

        global.money -= cost;
		
		
		show_debug_message(dist);
        var new_connection = {
            city_a: global.sc1,
            city_b: global.sc2,
            income: (dist/20) * global.sc1.income * global.sc2.income
        };
        array_push(global.connections, new_connection);
		

		

    } else {
        global.current_event_text = "Not Enough Money";
        global.event_timer = 60;
    } }