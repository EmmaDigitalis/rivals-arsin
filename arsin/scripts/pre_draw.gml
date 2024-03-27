// draw the chain if the axe is not in the "held" state
// uses Guadua rope as a base, <3
shader_start();

if (instance_exists(axe)){
    if (axe.state != 10){
       
        // draw the chain
        var chain_x = hand_x;
        var chain_y = hand_y;
        
        var axe_dir = point_direction(chain_x,chain_y,axe.x,axe.y);
        
        var chain_dir = (chain_x > axe.x) ? -1 : 1;
            
        var chain_length = 0;
        var max_chain_length = point_distance(chain_x, chain_y, axe.x, axe.y);
        var chain_height = 0;
        var chain_animation_offset = 0;
        var chain_length_offset = ((max_chain_length / chain_loose_length) * 8);
        
        chain_color = clamp(300 - ((max_chain_length / chain_loose_length) * 100), 200, 255);
        chain_rgb = make_colour_rgb(chain_color, chain_color, chain_color);
        
        while (chain_length < max_chain_length-10){
            draw_sprite_ext(sprite_get("chain"), chain_animation_step + chain_animation_offset, chain_x, chain_y + chain_height, 1, chain_dir, axe_dir, chain_rgb, 1);
            chain_x += lengthdir_x(10 + chain_length_offset, axe_dir);
            chain_y += lengthdir_y(10 + chain_length_offset, axe_dir);
            chain_length += 10 + chain_length_offset;
            
            if (chain_height == 0){
                chain_height = 2;
            }else{
                chain_height = 0;
            }
            
            if (chain_animation_offset < 3){
                chain_animation_offset++;
            }else{
                chain_animation_offset = 0;
            }
        }
        draw_sprite_ext(sprite_get("chain"), chain_animation_step, chain_x, chain_y + chain_height, 1, chain_dir, axe_dir, chain_rgb, 1);
        
        //draw chain range indicator
        if (max_chain_length > (chain_pull_length * 0.55)){
            if (border_opacity < 0.4){
                border_opacity += 0.05;    
            }
        }else{
            if (border_opacity > 0){
                border_opacity -= 0.1;    
            }
        }
        if (axe.state == 2){
            draw_sprite_ext(sprite_get("border"), 0, axe.x-lengthdir_x(chain_max_length, axe_dir), axe.y-lengthdir_y(chain_max_length, axe_dir), 1, 1, 180 + axe_dir, $ffffff, border_opacity);
        }
    }else{
        // draw axe when holding it
        if (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_FROZEN || state == PS_WRAPPED || state == PS_TUMBLE){
            if (!heat){
                draw_sprite_ext(sprite_get("hurt_axe"), image_index, x, y, spr_dir, 1, 0, c_white, 1);    
            }else{
                draw_sprite_ext(sprite_get("hurt_hot"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
            }
            
        }
        
        // sometimes messes up during moonwalks. oops.
        // now it happens behind the player tho
        if (state == PS_DASH_START){
            if (!heat){
                if (sign(ceil(abs(hsp)) * sign(hsp)) != spr_dir){
                    draw_sprite_ext(sprite_get("dash_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                }else{
                    draw_sprite_ext(sprite_get("dashstart_axe"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);    
                }  
            }else{
                if (sign(ceil(abs(hsp)) * sign(hsp)) != spr_dir){
                    draw_sprite_ext(sprite_get("dash_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);
                }else{
                    draw_sprite_ext(sprite_get("dashstart_hot"), image_index, x, y, spr_dir, 1, 0, $ffffff, 1);    
                }  
            }
        }
                      
    }
}


shader_end();