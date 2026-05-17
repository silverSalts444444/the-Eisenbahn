

if (global.sc1 != noone && global.sc2 != noone){
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_line_width(global.sc1.x+32,global.sc1.y+32,global.sc2.x+32,global.sc2.y+32,16);
	draw_set_color(make_color_rgb(180, 130, 60));
	draw_line_width(global.sc1.x+32,global.sc1.y+32,global.sc2.x+32,global.sc2.y+32,8);
	draw_set_alpha(1);

}
for (var i = 0; i < array_length(global.connections); i++) {
    var c = global.connections[i];
    var x1 = c.city_a.x+32;
    var y1 = c.city_a.y+32;
    var x2 = c.city_b.x+32;
    var y2 = c.city_b.y+32;
	
	draw_set_alpha(0.75);

    draw_set_color(c_black);
    draw_line_width(x1, y1, x2, y2, 16);

    draw_set_color(make_color_rgb(180, 130, 60));
    draw_line_width(x1, y1, x2, y2, 8);
	
	draw_set_alpha(1);
}

draw_set_color(c_black);
draw_set_font(Font1);
draw_text(50,15,string(global.year));
draw_set_font(Font3);
draw_text(390,-12,string(global.money)+"M");
draw_set_font(Font2);



