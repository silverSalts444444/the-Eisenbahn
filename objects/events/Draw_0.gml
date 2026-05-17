

if global.event_timer > 0 {
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 250, room_width, 410, false);
    draw_set_alpha(1);


    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(Font4); 
    draw_text_ext(room_width/2, 330, global.current_event_text, -1, 800);
	draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(Font1); 
    global.event_timer--;
}
if (global.event_timer <= 0 && global.year = 1871){
	room_goto(endscreen);
}


