hover = true;
global.year++;
checkEvents();
for (var i = 0; i < array_length(global.connections); i++) {
    global.money += global.connections[i].income;
}

global.sc1 = noone;
global.sc2 = noone;
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if (global.year == 1839){
	layer_background_sprite(back_id, Sprite8);
}
if (global.year == 1867){
	layer_background_sprite(back_id, Sprite9);
}



