//update
// create the axe and attach it to the player
if (axe == noone && (state != PS_DEAD && state != PS_RESPAWN)){
    with (instance_create(x-20*spr_dir, y-64, "obj_article1")){
        other.axe = id;
        spr_dir = 1;
    }    
}

// reset move cooldown for air moves
if (!free || state = PS_WALL_JUMP || state_cat == SC_HITSTUN ){
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
}

// advance the animation frame the chain will use
if (chain_animation_step < 3){
    chain_animation_step += 0.1;
}else{
    chain_animation_step = 0;
}

if (state != PS_ATTACK_GROUND){
    taunt_cancel = false;
}

// set the position for the start of the chain
// used for drawing the chain, and restricting player movement when outside the radius
hand_x = x - (8 * spr_dir);
hand_y = y - 40;

// Custom state used when clinging on the wall whilst hanging off the chain
if (state == 96){ 
    hurtboxID.sprite_index = sprite_get("arsin_hurtbox");
    yoink_friction_timer = 0;
    vsp = 0;
    hsp = 0;
    can_move = false;
    can_jump = false;
    
    can_shield = false;
    can_drop = false;
    can_djump = false;
    can_crouch = false;
    can_dash = false;
    can_walk = false;
    can_fast_fall = false;
    can_wall_cling = false;
    
    can_attack = false;
    can_strong = false;
    can_ustrong = false;
    can_special = false;
    can_dspecial = false;
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    // has_airdodge = false;
    
    tension_will_restore = false;
    if (tension < tension_max){
        tension += tension_wallcling;
    }else{
        state = PS_PRATFALL;
        axe.sw = {
            _can_be_grounded: false,
            _ignores_walls: true,
            _free: true,
            _x: axe.x,
            _y: axe.y,
            _hsp: hsp,
            _vsp: vsp,
            _sfx: "sfx_kragg_roll_land",
            _hitbox: noone,
            _particle: noone,
            _state: 5
        }
        axe.state = 0;
    }
    
    if (jump_down){
        tension += 23;
        if (tension > tension_max - 1){
            // show a visual and audio indicator that the tension bar is full
            // the bars will also change color in draw_hud and post_draw 
            var temp_fx = spawn_hit_fx(x - (32 * spr_dir), y - 112, part_sparkle);
            temp_fx.depth = depth - 2;
            sound_play(asset_get("mfx_star"));
            tension = tension_max;
        }
        image_index = 0;
        sprite_index = sprite_get("hanging_jump");
        state_timer = 0;
        state = 97;
        sound_play(asset_get("sfx_jumpground"));
        if (axe.state != 10){
            axe.sw = {
                _can_be_grounded: false,
                _ignores_walls: true,
                _free: true,
                _x: axe.x,
                _y: axe.y,
                _hsp: 0,
                _vsp: 0,
                _sfx: noone,
                _hitbox: noone,
                _particle: HFX_FOR_HIT_SMALL,
                _state: 5
            }
            axe.state = 0;
        }
    }
    
    if (down_hard_pressed){
        vsp = cling_fall_spd;
        state = PS_IDLE_AIR;
        axe.sw = {
            _can_be_grounded: false,
            _ignores_walls: true,
            _free: true,
            _x: axe.x,
            _y: axe.y,
            _hsp: 0,
            _vsp: 0,
            _sfx: noone,
            _hitbox: noone,
            _particle: HFX_FOR_HIT_SMALL,
            _state: 5
        }
        axe.state = 0;
    }
    
    if (cling_wall = "right"){
        spr_dir = 1;
    }else{
        spr_dir = -1;
    }
    
    sprite_index = sprite_get("hanging");
    image_index += 0.1;
} else if (state == 97) {
    sprite_index = sprite_get("hanging_jump");
    can_jump = false;
    can_shield = false;
    can_drop = false;
    can_djump = false;
    can_crouch = false;
    can_dash = false;
    can_walk = false;
    can_fast_fall = false;
    can_wall_cling = false;
    
    can_attack = false;
    can_strong = false;
    can_ustrong = false;
    can_special = false;
    can_dspecial = false;
    
    if (state_timer < 7){
        vsp = 0;
        hsp = 0;
    }
    
    switch (state_timer){
        case 0:
            image_index = 0;
        break;
        
        case 3:
            image_index = 1;
        break;
        
        case 5:
            image_index = 2;
        break;
        
        case 7:
            image_index = 3;
            vsp = -cling_jump_spd;
            if (!joy_pad_idle){
                if (joy_dir > 135 && joy_dir < 225){
                    hsp = -cling_hor_spd;
                }
                
                if (joy_dir > 315 || joy_dir < 45){
                    hsp = cling_hor_spd;
                }
            }
        break;
        
        case 10:
            image_index = 4;
        break;
        
        case 15:
            djumps = 0;
            state = PS_IDLE_AIR;
        break;
    }
} else {
    //restrict movement if too far away from axe
    if (instance_exists(axe)){
        
        // distance to the axe
        var distance_to_axe = point_distance(hand_x, hand_y, axe.x, axe.y);
        
         // returns -1 if player is moving left, 1 if right
        var player_movement_direction = sign(hsp);
        
        // returns -1 if player is left of axe, 1 if right
        var player_relative_position = sign(ceil(lengthdir_x(point_distance(axe.x, axe.y, x, y), point_direction(axe.x, axe.y, x, y))));
            
        var move_spd = point_distance(0, 0, hsp, vsp);    
        
        if (axe.state == 2){ // when axe is in ground
            
            // slower movement when holding axe
            dash_speed = dash_speed_noaxe;
            
            if (state_cat == SC_HITSTUN && distance_to_axe > chain_max_length && move_spd > unyoink_speed){
                var launch_direction = point_direction(0, 0, hsp, vsp);
                move_spd *= 0.95;
                hsp = lengthdir_x(move_spd, launch_direction);
                vsp = lengthdir_y(move_spd, launch_direction);
                
                sound_play(asset_get("mfx_logo_shing"))
                axe.sw = {
                    _can_be_grounded: false,
                    _ignores_walls: true,
                    _free: true,
                    _x: axe.x,
                    _y: axe.y,
                    _hsp: 0,
                    _vsp: 0,
                    _sfx: "sfx_kragg_roll_land",
                    _hitbox: noone,
                    _particle: noone,
                    _state: 5
                }
                axe.state = 0;
            }
            
            if (!free){ // grounded
                // stop movement when crossing the max chain length
                if(distance_to_axe > chain_max_length){
                    // make sure you don't get pulled left and right constantly when you're above the axe
                    if (abs(hand_x - axe.x) < yoink_safe_zone){
                        hsp = hsp / 2;
                    }else{
                        // restrict movement speed when outside the axe radius
                        if (joy_pad_idle || player_movement_direction != player_relative_position || state != PS_DASH){
                            if (abs(yoink_speed) < max_yoink_speed){
                                yoink_speed += yoink_accel * -player_relative_position;    
                            } else {
                                yoink_speed = max_yoink_speed * -player_relative_position;    
                            }
                        }else{
                            yoink_speed = 0;
                            // increase tension meter if you're running beyond the chain
                            if (tension < tension_max){
                                tension_will_restore = false;
                                tension += tension_pull;
                            }
                            hsp -= (dash_speed - yoink_pull_speed) * player_relative_position;
                        }
                        
                        if (tension >= tension_max){ // pop axe out of the ground when tension is max
                            axe.sw = {
                                _can_be_grounded: false,
                                _ignores_walls: false,
                                _free: true,
                                _x: axe.x,
                                _y: axe.y,
                                _hsp: 6 * player_relative_position,
                                _vsp: -7,
                                _sfx: "sfx_kragg_roll_land",
                                _hitbox: noone,
                                _particle: noone,
                                _state: 1
                            }
                            axe.state = 0;
                    
                        }
                    }
                    
                    // change jump squat 
                    yoink_friction_timer = yoink_friction_time;
                    
                }else{  // if you're inside the max chain length
                    tension_will_restore = true;
                    if (distance_to_axe > chain_pull_length && yoink_friction_timer == 0){
                        // if you're in the dash-only zone
                        if (abs(lengthdir_x(distance_to_axe, point_direction(hand_x, hand_y, axe.x, axe.y))) > yoink_safe_zone){
                            hsp -= walk_speed * player_relative_position;
                        }
                    }
                    
                    // reset tension to zero if in axe zone
                    if (tension > 0 && tension_will_restore == true){
                        tension -= tension_recovery;
                    }else{
                        tension = 0;
                    }
                }
            }else{ // if airborn
                if (yoink_friction_timer == 0){
                    // when outside axe zone
                    if (distance_to_axe > chain_max_length){
                        // get exact movement vector
                        var travel_len = point_distance(x, y, x+hsp, y+vsp);
                        var travel_dir = point_direction(x, y, x+hsp, y+vsp);
                        
                        // if below axe and falling
                        if (hand_y > axe.y && vsp > 0){
                            travel_dir = point_direction(axe.x, axe.y, hand_x, hand_y) - (90 * player_relative_position);
                            
                            if (place_meeting(x-4, y, asset_get("par_block")) || place_meeting(x+4, y, asset_get("par_block"))){
                                if ( instance_place(bbox_right, y, asset_get("par_block")) ){
                                    cling_wall = "right";
                                    while ( instance_place(x, y, asset_get("par_block")) ){
                                        x -= 1;
                                    }
                                }
                                
                                if ( instance_place(bbox_left, y, asset_get("par_block")) ){
                                    cling_wall = "left";
                                    while ( instance_place(x, y, asset_get("par_block")) ){
                                        x += 1;
                                    }
                                }
                                state = 96; // hanging state
                                exit;
                            }
                        }
                        // if above axe and rising
                        if (vsp < 0 && hand_y < axe.y){ 
                            // adjust travel direction and speed to keep player in axe zone
                            travel_dir = travel_dir + (15 * player_relative_position);
                            travel_len = travel_len * 0.9;
                        }
                        
                        //move toward player if too far away
                        if (abs(distance_to_axe) > chain_loose_length){
                            var angle_to_axe = point_direction(hand_x, hand_y, axe.x, axe.y);
                            
                            x += lengthdir_x(0.1, angle_to_axe);
                            y += lengthdir_y(0.1, angle_to_axe);
                        }
                        
                        // actually adjust speeds using vector info
                        hsp = lengthdir_x(travel_len, travel_dir);
                        vsp = lengthdir_y(travel_len, travel_dir);
                        
                        // slow down if directly below axe
                        if (abs(hand_x - axe.x) < yoink_safe_zone && hand_y > axe.y){
                            if (vsp >= 0){ // only restrict movement if going down, so you can still escape, kinda
                                if (hsp > 0){
                                    hsp = max(hsp * 0.7, 1);    
                                }else{
                                    hsp = min(hsp * 0.7, -1);
                                }
                                vsp = vsp * 0.7;
                            }
                            
                            if (tension < tension_max){
                                tension_will_restore = false;
                                tension += tension_hanging;
                            }else{
                                if (axe.state == 2){
                                    axe.sw = {
                                        _can_be_grounded: false,
                                        _ignores_walls: true,
                                        _free: true,
                                        _x: axe.x,
                                        _y: axe.y,
                                        _hsp: axe.hsp,
                                        _vsp: axe.vsp,
                                        _sfx: "sfx_kragg_roll_land",
                                        _hitbox: noone,
                                        _particle: noone,
                                        _state: 5
                                    }
                                    axe.state = 0;
                                }
                            }
                        }
                    }
                }else{ // if tension is active, yoink player
                    
                    // only increase speed when outside axe area
                    if (abs(hand_x - axe.x) > chain_max_length){
                        if (abs(yoink_speed) < max_yoink_speed){
                            yoink_speed += yoink_accel * -player_relative_position;    
                        } else {
                            yoink_speed = max_yoink_speed * -player_relative_position;    
                        }  
                    }

                    // make the player jump slightly less high when being pulled by the chain
                    if (vsp < -yoink_jump_speed){
                        vsp = -yoink_jump_speed;
                    }
                    
                }
            }
        }else{
            
            // faster movement when not holding axe
            dash_speed = dash_speed_axe;
            
            if (!free){
                tension_will_restore = true;
            }
            // reset tension to zero if in axe zone
            if (tension > 0){
                if (tension_will_restore == true){
                    tension -= tension_recovery;    
                }
            }else{
                tension = 0;
            }
            
            // if axe is being thrown up, do some fun stuff to it 
            if (axe.state == 6){
            // make sure the player gets dragged along with the axe after UAIR
            // but only when the axe is below the player
                if (axe.y > y){
                    distance_to_axe = point_distance(hand_x, hand_y, axe.x, axe.y);
                    if (!free){
                        // stop movement when crossing the max chain length
                        if(distance_to_axe > chain_max_length){
                            if (abs(hand_x - axe.x) < yoink_safe_zone){
                                hsp = hsp / 2;
                            }else{
                                // pull player along when out of circle
                                if (joy_pad_idle || player_movement_direction != player_relative_position){
                                    hsp -= yoink_accel * player_relative_position;
                                }else{
                                    hsp -= (dash_speed - yoink_pull_speed) * player_relative_position;
                                }
                            }
                        }
                    }else{ // if airborn
                        if(distance_to_axe > chain_max_length){
                            hsp -= yoink_accel * player_relative_position;
                            vsp += yoink_accel / 4;
                        }
                    }
                }
            }
        }
    }
}


// friction timer stuff
if (yoink_friction_timer > 0 && yoink_speed != 0){
    yoink_friction_timer -= 1;    
    
    // play a sound effect when player slides back into axe zone
    if (yoink_friction_timer == yoink_friction_time - 2){
        sound_play(asset_get("sfx_holy_grass"));
    }
    
    // apply friction to yoink_speed
    if (!free){
        yoink_speed -= yoink_friction_ground * sign(yoink_speed);
    }else{
        yoink_speed -= yoink_friction_air * sign(yoink_speed);
    }
    
    if ((state == PS_DASH || state == PS_DASH_START) && spr_dir != sign(yoink_speed)){
        yoink_speed += yoink_dash_accel * spr_dir;
    }
    
    // if (abs(yoink_speed) <= dash_speed){
    //     yoink_speed = 0;
    //     yoink_friction_timer = 0;
    // }
    
    hsp = yoink_speed;    
    
}else{
    yoink_speed = 0;
    yoink_friction_timer = 0;
}

if (yoink_cancel && hsp != 0){
    hsp = max(abs(hsp / 2), dash_speed) * sign(hsp);
    yoink_cancel = false;
}

// limit yoink speed
if (abs(hsp) > max_yoink_speed){
    hsp = max_yoink_speed * sign(hsp);
}