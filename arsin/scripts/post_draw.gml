// draw the chain if the axe is not in the "held" state
// uses Guadua rope as a base
shader_start();

var hud_col = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4));
if (tension == tension_max){
    hud_col = make_colour_rgb(255, 0, 0);
}
draw_rectangle_color(x-28, y-char_height-28, x+28, y-char_height-26, c_gray, c_gray, c_gray, c_gray, false);
draw_rectangle_color(x-28, y-char_height-28, x-28+((56) * (tension / tension_max)), y-char_height-26, hud_col, hud_col, hud_col, hud_col, false);
// outlines
draw_rectangle_color(x-28, y-char_height-28, x+28, y-char_height-31, c_black, c_black, c_black, c_black, false); //top
draw_rectangle_color(x-28, y-char_height-26, x+28, y-char_height-25, c_black, c_black, c_black, c_black, false); //bottom
draw_rectangle_color(x-29, y-char_height-30, x-28, y-char_height-25, c_black, c_black, c_black, c_black, false); //left
draw_rectangle_color(x+28, y-char_height-30, x+29, y-char_height-25, c_black, c_black, c_black, c_black, false); //right

if (instance_exists(axe)){
    if (axe.state == 10){
        // draw axe when holding it
        if (!heat){
            switch (state){
                case PS_IDLE:
                    draw_sprite_ext(sprite_get("idle_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_IDLE_AIR:
                    draw_sprite_ext(sprite_get("jump_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_CROUCH:
                    draw_sprite_ext(sprite_get("crouch_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALK:
                    draw_sprite_ext(sprite_get("walk_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALK_TURN:
                    draw_sprite_ext(sprite_get("walkturn_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DASH:
                    draw_sprite_ext(sprite_get("dash_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DASH_STOP:
                    draw_sprite_ext(sprite_get("dashstop_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DASH_TURN:
                    draw_sprite_ext(sprite_get("dashturn_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WAVELAND:
                    draw_sprite_ext(sprite_get("waveland_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_JUMPSQUAT:
                    draw_sprite_ext(sprite_get("jumpstart_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_FIRST_JUMP:
                    draw_sprite_ext(sprite_get("jump_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DOUBLE_JUMP:
                    draw_sprite_ext(sprite_get("doublejump_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALL_JUMP:
                    draw_sprite_ext(sprite_get("walljump_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_LAND:
                    draw_sprite_ext(sprite_get("land_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_AIR_DODGE:
                    draw_sprite_ext(sprite_get("airdodge_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_PARRY_START:
                    // needs to be idle, because the axe will blink if you mash dodge when it's set to parry
                    draw_sprite_ext(sprite_get("idle_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_PARRY:
                    draw_sprite_ext(sprite_get("parry_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_ROLL_BACKWARD:
                    draw_sprite_ext(sprite_get("roll_backward_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_ROLL_FORWARD:
                    draw_sprite_ext(sprite_get("roll_forward_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_TECH_GROUND:
                    draw_sprite_ext(sprite_get("tech_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_TECH_BACKWARD:
                    draw_sprite_ext(sprite_get("roll_backward_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_TECH_FORWARD:
                    draw_sprite_ext(sprite_get("roll_forward_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALL_TECH:
                    draw_sprite_ext(sprite_get("walljump_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_ATTACK_AIR:
                    switch (attack){
                        case AT_NAIR:
                            if (sprite_index != sprite_get("nair_noaxe")){
                                draw_sprite_ext(sprite_get("nair_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);    
                            }
                        break;
                        
                        case AT_FAIR:
                            draw_sprite_ext(sprite_get("fair_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_BAIR:
                            if (sprite_index != sprite_get("bair_noaxe")){
                                draw_sprite_ext(sprite_get("bair_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);    
                            }
                        break;
                        
                        case AT_DAIR:
                            draw_sprite_ext(sprite_get("dair_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_UAIR:
                            draw_sprite_ext(sprite_get("uair_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_NSPECIAL:
                            draw_sprite_ext(sprite_get("nspecial_air_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_NSPECIAL_2:
                            draw_sprite_ext(sprite_get("nspecial_alt_air_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FSPECIAL:
                            draw_sprite_ext(sprite_get("fspecial_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_USPECIAL:
                            draw_sprite_ext(sprite_get("uspecial_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DSPECIAL:
                            draw_sprite_ext(sprite_get("dspecial_air_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                    }
                        
                break;
                
                case PS_ATTACK_GROUND:
                    switch (attack){
                        case AT_JAB:
                            draw_sprite_ext(sprite_get("jab_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DATTACK:
                            draw_sprite_ext(sprite_get("dattack_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FTILT:
                            if (sprite_index != sprite_get("ftilt_noaxe")){
                                draw_sprite_ext(sprite_get("ftilt_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_UTILT:
                            if (sprite_index != sprite_get("utilt_noaxe")){
                                draw_sprite_ext(sprite_get("utilt_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_DTILT:
                            if (sprite_index != sprite_get("dtilt_noaxe")){
                                draw_sprite_ext(sprite_get("dtilt_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_NSPECIAL:
                            draw_sprite_ext(sprite_get("nspecial_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_NSPECIAL_2:
                            draw_sprite_ext(sprite_get("nspecial_alt_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FSPECIAL:
                            draw_sprite_ext(sprite_get("fspecial_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_USPECIAL:
                            draw_sprite_ext(sprite_get("uspecial_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DSPECIAL:
                            draw_sprite_ext(sprite_get("dspecial_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FSTRONG:
                            draw_sprite_ext(sprite_get("fstrong_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_USTRONG:
                            draw_sprite_ext(sprite_get("ustrong_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DSTRONG:
                            if (sprite_index != sprite_get("dstrong_noaxe")){
                                draw_sprite_ext(sprite_get("dstrong_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);    
                            }
                        break;
                        
                        case AT_TAUNT:
                            draw_sprite_ext(sprite_get("taunt_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                    }
                break;
                
                case PS_LANDING_LAG:
                    draw_sprite_ext(sprite_get("landinglag_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_HITSTUN:
                break;
                
                case PS_HITSTUN_LAND:
                break;
                
                case PS_TUMBLE:
                break;
                
                case PS_PRATFALL:
                    draw_sprite_ext(sprite_get("pratfall_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_PRATLAND:
                    draw_sprite_ext(sprite_get("landinglag_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_SPAWN:
                    draw_sprite_ext(sprite_get("idle_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_RESPAWN:
                    draw_sprite_ext(sprite_get("idle_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DEAD:
                    draw_sprite_ext(sprite_get("no_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_FROZEN:
                break;
                
                case PS_WRAPPED:
                break;
                
                case 96:
                    draw_sprite_ext(sprite_get("hanging_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case 97:
                    draw_sprite_ext(sprite_get("hanging_jump_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                default:
                    draw_sprite_ext(sprite_get("no_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
            }
        }else{
            // hot axe sprites
            switch (state){
                case PS_IDLE:
                    draw_sprite_ext(sprite_get("idle_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_IDLE_AIR:
                    draw_sprite_ext(sprite_get("jump_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_CROUCH:
                    draw_sprite_ext(sprite_get("crouch_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALK:
                    draw_sprite_ext(sprite_get("walk_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALK_TURN:
                    draw_sprite_ext(sprite_get("walkturn_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DASH:
                    draw_sprite_ext(sprite_get("dash_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DASH_STOP:
                    draw_sprite_ext(sprite_get("dashstop_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DASH_TURN:
                    draw_sprite_ext(sprite_get("dashturn_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WAVELAND:
                    draw_sprite_ext(sprite_get("waveland_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_JUMPSQUAT:
                    draw_sprite_ext(sprite_get("jumpstart_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_FIRST_JUMP:
                    draw_sprite_ext(sprite_get("jump_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DOUBLE_JUMP:
                    draw_sprite_ext(sprite_get("doublejump_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALL_JUMP:
                    draw_sprite_ext(sprite_get("walljump_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_LAND:
                    draw_sprite_ext(sprite_get("land_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_AIR_DODGE:
                    draw_sprite_ext(sprite_get("airdodge_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_PARRY_START:
                    // needs to be idle, because the axe will blink if you mash dodge when it's set to parry
                    draw_sprite_ext(sprite_get("idle_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_PARRY:
                    draw_sprite_ext(sprite_get("parry_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_ROLL_BACKWARD:
                    draw_sprite_ext(sprite_get("roll_backward_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_ROLL_FORWARD:
                    draw_sprite_ext(sprite_get("roll_forward_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_TECH_GROUND:
                    draw_sprite_ext(sprite_get("tech_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_TECH_BACKWARD:
                    draw_sprite_ext(sprite_get("roll_backward_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_TECH_FORWARD:
                    draw_sprite_ext(sprite_get("roll_forward_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_WALL_TECH:
                    draw_sprite_ext(sprite_get("walljump_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_ATTACK_AIR:
                    switch (attack){
                        case AT_NAIR:
                            if (sprite_index != sprite_get("nair_noaxe")){
                                draw_sprite_ext(sprite_get("nair_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_FAIR:
                            draw_sprite_ext(sprite_get("fair_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_BAIR:
                            if (sprite_index != sprite_get("bair_noaxe")){
                                draw_sprite_ext(sprite_get("bair_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_DAIR:
                            draw_sprite_ext(sprite_get("dair_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_UAIR:
                            draw_sprite_ext(sprite_get("uair_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_NSPECIAL:
                            draw_sprite_ext(sprite_get("nspecial_air_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            
                        break;
                        
                        case AT_NSPECIAL_2:
                            draw_sprite_ext(sprite_get("nspecial_alt_air_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FSPECIAL:
                            draw_sprite_ext(sprite_get("fspecial_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_USPECIAL:
                            draw_sprite_ext(sprite_get("uspecial_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DSPECIAL:
                            draw_sprite_ext(sprite_get("dspecial_air_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                    }
                        
                break;
                
                case PS_ATTACK_GROUND:
                    switch (attack){
                        case AT_JAB:
                            draw_sprite_ext(sprite_get("jab_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DATTACK:
                            draw_sprite_ext(sprite_get("dattack_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FTILT:
                            if (sprite_index != sprite_get("ftilt_noaxe")){
                                draw_sprite_ext(sprite_get("ftilt_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_UTILT:
                            if (sprite_index != sprite_get("utilt_noaxe")){
                                draw_sprite_ext(sprite_get("utilt_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_DTILT:
                            if (sprite_index != sprite_get("dtilt_noaxe")){
                                draw_sprite_ext(sprite_get("dtilt_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);    
                            }
                        break;
                        
                        case AT_NSPECIAL:
                            draw_sprite_ext(sprite_get("nspecial_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_NSPECIAL_2:
                            draw_sprite_ext(sprite_get("nspecial_alt_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FSPECIAL:
                            draw_sprite_ext(sprite_get("fspecial_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_USPECIAL:
                            draw_sprite_ext(sprite_get("uspecial_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DSPECIAL:
                            draw_sprite_ext(sprite_get("dspecial_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_FSTRONG:
                            draw_sprite_ext(sprite_get("fstrong_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_USTRONG:
                            draw_sprite_ext(sprite_get("ustrong_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                        
                        case AT_DSTRONG:
                            if (sprite_index != sprite_get("dstrong_noaxe")){
                                draw_sprite_ext(sprite_get("dstrong_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                            }
                        break;
                        
                        case AT_TAUNT:
                            draw_sprite_ext(sprite_get("taunt_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                        break;
                    }
                break;
                
                case PS_LANDING_LAG:
                    draw_sprite_ext(sprite_get("landinglag_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_HITSTUN:
                break;
                
                case PS_HITSTUN_LAND:
                break;
                
                case PS_TUMBLE:
                break;
                
                case PS_PRATFALL:
                    draw_sprite_ext(sprite_get("pratfall_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_PRATLAND:
                    draw_sprite_ext(sprite_get("landinglag_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_SPAWN:
                    draw_sprite_ext(sprite_get("idle_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_RESPAWN:
                    draw_sprite_ext(sprite_get("idle_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_DEAD:
                    draw_sprite_ext(sprite_get("no_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case PS_FROZEN:
                break;
                
                case PS_WRAPPED:
                break;
                
                case 96:
                    draw_sprite_ext(sprite_get("hanging_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                case 97:
                    draw_sprite_ext(sprite_get("hanging_jump_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                break;
                
                default:
                    draw_sprite_ext(sprite_get("no_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
            }
        }
    }
}

shader_end();