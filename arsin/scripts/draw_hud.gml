//draw_hud - the x position of your HUD element is 48*(i-1)

shader_start()
var hud_col = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4));
if (tension == tension_max){
    hud_col = make_colour_rgb(255, 0, 0);
}
draw_rectangle_color(temp_x+108, temp_y-3, temp_x+196, temp_y+2, c_gray, c_gray, c_gray, c_gray, false);
draw_rectangle_color(temp_x+108, temp_y-3, temp_x+107+((197-108) * (tension / tension_max)), temp_y+2, hud_col, hud_col, hud_col, hud_col, false);
if (!heat){
    draw_sprite_ext(sprite_get("hud_tension"), 0, temp_x+92, temp_y-24, 2, 2, 0, $ffffff, 1);    
}else{
    draw_sprite_ext(sprite_get("hud_tension_hot"), 0, temp_x+92, temp_y-24, 2, 2, 0, $ffffff, 1);    
}

shader_end()