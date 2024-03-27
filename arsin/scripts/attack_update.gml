//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL  || attack == AT_NSPECIAL || attack == AT_NSPECIAL_2){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

switch (attack){
    // jab 2 axe
    case AT_JAB:
        if (window == 1 && window_timer == 1){
            reset_hitbox_value(attack, 2, HG_WINDOW);
            reset_hitbox_value(attack, 4, HG_WINDOW);
        }
        
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                // set hitbox out out range
                set_hitbox_value(attack, 2, HG_WINDOW, 10); 
                // move hitboxes into range
                set_hitbox_value(attack, 4, HG_WINDOW, 5);
            }
        }
    break;
    
    // no axe
    case AT_DATTACK:
        
    break;
    
    // axe
    case AT_FTILT:
        if (window == 1 && window_timer == 1){
            
            reset_window_value(attack, 1, AG_WINDOW_LENGTH);
            reset_window_value(attack, 1, AG_WINDOW_SFX_FRAME);
            reset_window_value(attack, 3, AG_WINDOW_LENGTH);
            
            reset_attack_value(attack, AG_SPRITE);
            
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
        }
    
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("ftilt"));
                hurtboxID.sprite_index = sprite_get("ftilt_hurt");
                // set hitbox out out range
                set_hitbox_value(attack, 1, HG_WINDOW, 10); 
                
                
                set_window_value(attack, 1, AG_WINDOW_LENGTH, 12);
                set_window_value(attack, 1, AG_WINDOW_SFX_FRAME, 9);
                set_window_value(attack, 3, AG_WINDOW_LENGTH, 7);
                
                // move hitboxes into range
                set_hitbox_value(attack, 1, HG_WINDOW, 10);
                set_hitbox_value(attack, 2, HG_WINDOW, 2);
                set_hitbox_value(attack, 3, HG_WINDOW, 2);
                set_hitbox_value(attack, 4, HG_WINDOW, 2);
                set_hitbox_value(attack, 5, HG_WINDOW, 2);
            }
        }
    break;
    
    case AT_UTILT:
        if (window == 1 && window_timer == 1){
            reset_attack_value(attack, AG_SPRITE);
            
            reset_window_value(attack, 1, AG_WINDOW_LENGTH);
            reset_window_value(attack, 2, AG_WINDOW_LENGTH);
            reset_window_value(attack, 3, AG_WINDOW_LENGTH);
            
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
        }
    
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("utilt"));
                hurtboxID.sprite_index = sprite_get("utilt_hurt");
                // set hitbox out out range
                set_hitbox_value(attack, 1, HG_WINDOW, 10); 
                set_hitbox_value(attack, 2, HG_WINDOW, 10); 
                set_hitbox_value(attack, 3, HG_WINDOW, 10); 
                set_hitbox_value(attack, 4, HG_WINDOW, 10); 
                set_hitbox_value(attack, 5, HG_WINDOW, 10); 
                
                
                set_window_value(attack, 1, AG_WINDOW_LENGTH, 9);
                set_window_value(attack, 2, AG_WINDOW_LENGTH, 4);
                set_window_value(attack, 3, AG_WINDOW_LENGTH, 13);
                
                
                // move hitboxes into range
                set_hitbox_value(attack, 6, HG_WINDOW, 2);
                set_hitbox_value(attack, 7, HG_WINDOW, 2);
                set_hitbox_value(attack, 8, HG_WINDOW, 2);
                set_hitbox_value(attack, 9, HG_WINDOW, 2);
                set_hitbox_value(attack, 10, HG_WINDOW, 2);
            }
        }
    break;
    
    case AT_DTILT:
        if (window == 1 && window_timer == 1){
            reset_attack_value(attack, AG_SPRITE);
            
            reset_window_value(attack, 2, AG_WINDOW_LENGTH);
            reset_window_value(attack, 3, AG_WINDOW_LENGTH);
                
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
        }
        
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("dtilt"));
                hurtboxID.sprite_index = sprite_get("dtilt_hurt");
                // set hitbox out out range
                
                set_window_value(attack, 2, AG_WINDOW_LENGTH, 6);
                set_window_value(attack, 3, AG_WINDOW_LENGTH, 8);
                set_hitbox_value(attack, 1, HG_WINDOW, 7); 
                
                // move hitboxes into range
                set_hitbox_value(attack, 2, HG_WINDOW, 2);
                set_hitbox_value(attack, 3, HG_WINDOW, 2);
            }
        }
    break;
    
    case AT_NSPECIAL:
        if (instance_exists(axe)){
            can_fast_fall = false;
            if (window == 1 && window_timer == 1 && free){
                vsp = -5;   
            }
            
            // throw
            if (window == 1 && window_timer == 7){
                
                //set up an adjustable throw angle
                var throw_direction;
                if (joy_pad_idle){
                    throw_direction = axe.throw_angle
                }else{
                    if (spr_dir){
                        throw_direction = axe.throw_angle + clamp(angle_difference(45, joy_dir) / 1.5, -axe.throw_up, axe.throw_down);     
                    }else{
                        throw_direction = axe.throw_angle - clamp(angle_difference(135, joy_dir) / 1.5, -axe.throw_down, axe.throw_up);
                    }
                    
                }  
                var throw_h = lengthdir_x(axe.throw_speed, 90-(throw_direction*spr_dir));
                var throw_v = lengthdir_y(axe.throw_speed, 90-(throw_direction*spr_dir));
                axe.sw = {
                        _can_be_grounded: false,
                        _ignores_walls: false,
                        _free: true,
                        _x: x+(0*spr_dir),
                        _y: y-64,
                        _hsp: throw_h,
                        _vsp: throw_v,
                        _sfx: "sfx_kragg_throw",
                        _hitbox: [AT_NSPECIAL, 1, 0, 0],
                        _particle: noone,
                        _state: 1
                    }
                axe.state = 0;
            }
            
            if (window == 3){
                can_special = true;
            }
        }    
    break;
    
    case AT_NSPECIAL_2:
        if (instance_exists(axe)){
            // prolong yoinks
            if (yoink_friction_timer != 0){
                yoink_friction_timer += 0.5;
            }
            
            // start moving axe to player
            if (window == 1 && window_timer == get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH) - 5){
                if (axe.state != 10){
                    if (axe.state == 2){ // remove from ground if it is
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
                            _state: 4
                        }
                        axe.state = 0;                    
                    }else{ //otherwise, just return to player
                        axe.sw = {
                            _can_be_grounded: false,
                            _ignores_walls: true,
                            _free: true,
                            _x: axe.x,
                            _y: axe.y,
                            _hsp: axe.hsp,
                            _vsp: axe.vsp,
                            _sfx: noone,
                            _hitbox: [AT_NSPECIAL, 2, 0, 0],
                            _particle: noone,
                            _state: 5
                        }
                        axe.state = 0;
                    }
                }
            }
            
            // freeze window timer so you can only start moving again when axe is caught
            if (window == 2 && window_timer > 3){
                window_timer = 3;
            }
            
            // move on to next window
            if (axe.state == 10 && window == 2){
                window_timer = 0;
                window = 3;
            }
            
            if ((window == 2 && window_timer > 2) || window > 2){
                can_jump = true;
                can_dash = true;
                can_walk = true;
            }
            
            if (axe.state == 10){
                can_attack = true;
                can_special = true;
            }
    
            var at_windows = get_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS);
            if (window == at_windows && window_timer == get_window_value(AT_NSPECIAL_2, at_windows, AG_WINDOW_LENGTH) - 5){
                attack = 0;
            }
        }    
    break;
    
    case AT_FSPECIAL:
        can_fast_fall = false;
        can_jump = true;
        
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                reset_window_value(attack, 2, AG_WINDOW_HSPEED); 
                reset_window_value(attack, 2, AG_WINDOW_VSPEED);
                
                set_attack_value(attack, AG_SPRITE, sprite_get("fspecial"));
                set_attack_value(attack, AG_AIR_SPRITE, sprite_get("fspecial_air"));
                hurtboxID.sprite_index = sprite_get("fspecial_hurt");
                // set hitbox out out range
                set_hitbox_value(attack, 1, HG_WINDOW, 10); 
                // move hitboxes into range
                set_hitbox_value(attack, 2, HG_WINDOW, 3);
                set_hitbox_value(attack, 3, HG_WINDOW, 3);
            }
            if (window == at_length && window_timer == win_length){
                reset_attack_value(attack, AG_SPRITE);
                reset_attack_value(attack, AG_AIR_SPRITE);
                
                var i;
                for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                    reset_hitbox_value(attack, i, HG_WINDOW);
                }
            }
        }else{
            // distance to the axe
            var distance_to_axe = point_distance(hand_x, hand_y, axe.x, axe.y);
            // returns -1 if player is left of axe, 1 if right
            var player_relative_position = sign(ceil(lengthdir_x(point_distance(axe.x, axe.y, x, y), point_direction(axe.x, axe.y, x, y))));
                
            if (window == 1 && window_timer == 1){
                
                reset_attack_value(attack, AG_SPRITE);
                reset_attack_value(attack, AG_AIR_SPRITE);
                
                var i;
                for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                    reset_hitbox_value(attack, i, HG_WINDOW);
                }
            }
            
            
            // fun axe chasing stuff
            if (window == 2){
                
                if (spr_dir != player_relative_position){
                    // rush to axe
                    
                    var hrushspd = 14;
                    var vrushspd = clamp(lengthdir_y(point_distance(x, y, axe.x, axe.y+16), point_direction(x, y, axe.x, axe.y+16)) / hrushspd, -2, 2);
                    
                    set_window_value(attack, 2, AG_WINDOW_HSPEED, hrushspd);
                    set_window_value(attack, 2, AG_WINDOW_VSPEED, vrushspd);

                    if (window_timer == 7){
                        // Return if toward axe and above it, or axe is in air.
                        if (axe.state != 2 || (axe.state == 2 && (axe.y > y))){
                            axe.sw = {
                                _can_be_grounded: false,
                                _ignores_walls: true,
                                _free: true,
                                _x: axe.x,
                                _y: axe.y,
                                _hsp: axe.hsp,
                                _vsp: axe.vsp,
                                _sfx: noone,
                                _hitbox: noone,
                                _particle: noone,
                                _state: 5
                            }
                            axe.state = 0;
                        }
                        move_cooldown[AT_FSPECIAL] = 200;
                    }
                    
                    if (window_timer > 8){
                        window_timer = 8;
                    }
                    
                    // when movement gets upstructed, such as by a wall
                    if (hsp == 0){
                        window_timer = 0;
                        window = 4;
                    }
                    
                    //grab the funny axe
                    if (place_meeting(x, y, axe)){
                        axe.sw = {
                            _can_be_grounded: false,
                            _ignores_walls: true,
                            _free: true,
                            _x: hand_x,
                            _y: hand_y,
                            _hsp: 0,
                            _vsp: 0,
                            _sfx: "sfx_ell_utilt_retract",
                            _hitbox: noone,
                            _particle: noone,
                            _state: 10
                        }
                        axe.state = 0;
                        
                        set_window_value(attack, 2, AG_WINDOW_HSPEED, 10);
                        reset_window_value(attack, 2, AG_WINDOW_VSPEED);
                        hurtboxID.sprite_index = sprite_get("fspecial_hurt");
                        // set hitbox out out range
                        set_hitbox_value(attack, 1, HG_WINDOW, 10); 
                        // move hitboxes into range
                        set_hitbox_value(attack, 2, HG_WINDOW, 3);
                        set_hitbox_value(attack, 3, HG_WINDOW, 3);
                        // reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
                    }
                }
            }
            
            // fun axe chasing stuff
            if (window > 1){
                
                if (spr_dir == player_relative_position){
                    reset_window_value(attack, 2, AG_WINDOW_HSPEED); 
                    reset_window_value(attack, 2, AG_WINDOW_VSPEED);
                
                    // recall axe
                    if (distance_to_axe > chain_pull_length && axe.state == 2){
                        axe.sw = {
                            _can_be_grounded: false,
                            _ignores_walls: true,
                            _free: true,
                            _x: axe.x,
                            _y: axe.y,
                            _hsp: axe.hsp,
                            _vsp: axe.vsp,
                            _sfx: noone,
                            _hitbox: [AT_NSPECIAL, 2, 0, 0],
                            _particle: noone,
                            _state: 5
                        }
                        axe.state = 0;
                    }
                }
            }
        }
        
        if (window == 3 && window_timer == 2){
            reset_window_value(attack, 2, AG_WINDOW_HSPEED);
            reset_window_value(attack, 2, AG_WINDOW_VSPEED);
            move_cooldown[AT_FSPECIAL] = 100;
        }
    break;
    
    // axe
    case AT_USPECIAL:
        if (window == 1 && window_timer == 1){
            reset_attack_value(attack, AG_SPRITE);
            reset_attack_value(attack, AG_AIR_SPRITE);
            
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
        }
        
        // cancel attack if not hit wall
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("uspecial"));
                set_attack_value(attack, AG_AIR_SPRITE, sprite_get("uspecial"));
                hurtboxID.sprite_index = sprite_get("uspecial_hurt");
                // set hitbox out out range
                set_hitbox_value(attack, 1, HG_WINDOW, 10);
                set_hitbox_value(attack, 2, HG_WINDOW, 10);
                
                // move hitboxes into range
                set_hitbox_value(attack, 3, HG_WINDOW, 3);
                set_hitbox_value(attack, 4, HG_WINDOW, 3);
                set_hitbox_value(attack, 5, HG_WINDOW, 3);
                set_hitbox_value(attack, 6, HG_WINDOW, 3);
            }
        }
        
        if (window == 4 && window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)){
            if (free){
                set_state(PS_IDLE_AIR); 
            }else{
                set_state(PS_IDLE);
            }
        }
        // state = PS_PRATFALL;
        move_cooldown[AT_USPECIAL] = 200;
    break;
    
    // apply heat
    case AT_DSPECIAL:
        if (instance_exists(axe)){
            if (window == 2 && window_timer == 6 && axe.state == 10){
                heat = true;
            }
        }
    break;
    
    // explode axe
    case AT_DSPECIAL_2:
        if (instance_exists(axe)){
            if (window == 1 && window_timer == 1){
                axe.charge_effect = true;
                dspecial_type = (heat) ? 2 : 1;
            }
            
            // popout, maybe explode
            if (window == 2 && window_timer == get_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH) - 1){
                axe.sw = {
                    _can_be_grounded: false,
                    _ignores_walls: true,
                    _free: true,
                    _x: axe.x,
                    _y: axe.y,
                    _hsp: 0,
                    _vsp: 0,
                    _sfx: noone,
                    _hitbox: [AT_DSPECIAL_2, dspecial_type, 0, 0],
                    _particle: noone,
                    _state: 3
                }
                axe.state = 0;                    
            }
        }    
    break;
    
    case AT_FSTRONG:
    
    break;
    
    // no-axe
    case AT_USTRONG:
        if (window == 1 && window_timer == 1){
            grabbed = -1;
        }
        if (grabbed != -1 && window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            window = 8;
            window_timer = 0;
        }
        if (window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            set_state(PS_IDLE);
        }
    break;
    
    case AT_DSTRONG:
        if (window == 1 && window_timer == 1){
            reset_attack_value(attack, AG_SPRITE);
            
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
            
            set_window_value(attack, 3, AG_WINDOW_HAS_SFX, 1);
            set_window_value(attack, 3, AG_WINDOW_SFX, asset_get("sfx_blow_medium3"));
            set_window_value(attack, 3, AG_WINDOW_SFX_FRAME, 7);
        }
            
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("dstrong"));
                hurtboxID.sprite_index = sprite_get("dstrong_hurt");
                
                set_hitbox_value(attack, 1, HG_WINDOW, 10); 
                reset_window_value(attack, 3, AG_WINDOW_HAS_SFX);
                reset_window_value(attack, 3, AG_WINDOW_SFX);
                reset_window_value(attack, 3, AG_WINDOW_SFX_FRAME);
            }
            
            if (window == 3 && window_timer == 4){
                axe.sw = {
                    _can_be_grounded: false,
                    _ignores_walls: false,
                    _free: true,
                    _x: x+52*spr_dir,
                    _y: y-24,
                    _hsp: 0,
                    _vsp: 4,
                    _sfx: "sfx_kragg_throw",
                    _hitbox: [AT_DSTRONG, 2, 0, 0],
                    _particle: noone,
                    _state: 7
                }
                axe.state = 0;
            } 
        }
    break;

    case AT_NAIR:
        if (window == 1 && window_timer == 1){
            reset_attack_value(attack, AG_SPRITE);
            
            reset_attack_value(attack, AG_LANDING_LAG);
            reset_window_value(attack, 1, AG_WINDOW_LENGTH);
            reset_window_value(attack, 2, AG_WINDOW_LENGTH);
            reset_window_value(attack, 2, AG_WINDOW_LENGTH);
            reset_window_value(attack, 3, AG_WINDOW_LENGTH);
            
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
        }
        
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("nair"));
                hurtboxID.sprite_index = sprite_get("nair_hurt");
                // set hitbox out out range
                
                set_attack_value(attack, AG_LANDING_LAG, 7);
                set_window_value(attack, 1, AG_WINDOW_LENGTH, 9);
                set_window_value(attack, 2, AG_WINDOW_LENGTH, 15);
                set_window_value(attack, 3, AG_WINDOW_LENGTH, 8);
                
                set_hitbox_value(attack, 1, HG_WINDOW, 10); 
                set_hitbox_value(attack, 2, HG_WINDOW, 10); 
                set_hitbox_value(attack, 3, HG_WINDOW, 10); 
                set_hitbox_value(attack, 4, HG_WINDOW, 10); 
                set_hitbox_value(attack, 5, HG_WINDOW, 10); 
                // move hitboxes into range
                set_hitbox_value(attack, 6, HG_WINDOW, 2);
                set_hitbox_value(attack, 7, HG_WINDOW, 2);
                set_hitbox_value(attack, 8, HG_WINDOW, 2);
                set_hitbox_value(attack, 9, HG_WINDOW, 2);
                set_hitbox_value(attack, 10, HG_WINDOW, 2);
                set_hitbox_value(attack, 11, HG_WINDOW, 2);
                set_hitbox_value(attack, 12, HG_WINDOW, 2);
                set_hitbox_value(attack, 13, HG_WINDOW, 2);
                set_hitbox_value(attack, 14, HG_WINDOW, 2);
                set_hitbox_value(attack, 15, HG_WINDOW, 2);
            }
        }
    break;
    
    case AT_FAIR:
    
    break;
    
    case AT_BAIR:
        if (window == 1 && window_timer == 1){
            reset_attack_value(attack, AG_SPRITE);
            
            reset_attack_value(attack, AG_LANDING_LAG);
            reset_window_value(attack, 3, AG_WINDOW_LENGTH);
            reset_window_value(attack, 4, AG_WINDOW_LENGTH);
            reset_window_value(attack, 5, AG_WINDOW_LENGTH);
            
            var i;
            for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                reset_hitbox_value(attack, i, HG_WINDOW);
            }
        }
            
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            //switch animation to axe version, remove axe hitboxes
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("bair"));
                hurtboxID.sprite_index = sprite_get("bair_hurt");
                // set hitbox out out range
                set_hitbox_value(attack, 2, HG_WINDOW, 10); 
                
                set_attack_value(attack, AG_LANDING_LAG, 11);
                set_window_value(attack, 3, AG_WINDOW_LENGTH, 8);
                set_window_value(attack, 4, AG_WINDOW_LENGTH, 9);
                set_window_value(attack, 5, AG_WINDOW_LENGTH, 15);
                
                // move hitboxes into range
                set_hitbox_value(attack, 3, HG_WINDOW, 4);
            }
        }
    break;
    
    case AT_DAIR:
        if (window == 4){
            with (asset_get("pHitBox")){
                if (player_id == other && player == other.player && attack == AT_DAIR && hbox_num == 2){
                    hitbox_timer = length;
                }
            }
            
            if (window_timer == 0){
                spawn_hit_fx(x, y+2, HFX_GEN_DIR);
            }
        }
    break;
    
    case AT_UAIR:
        if (axe.state == 10){
            var at_length = get_attack_value(attack, AG_NUM_WINDOWS);
            var win_length = get_window_value(attack, at_length, AG_WINDOW_LENGTH);
            if (window == 1 && window_timer == 1){
                set_attack_value(attack, AG_SPRITE, sprite_get("uair"));
                hurtboxID.sprite_index = sprite_get("uair_hurt");
                
                set_window_value(attack, 1, AG_WINDOW_LENGTH, 13);
                set_window_value(attack, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
                set_window_value(attack, 1, AG_WINDOW_SFX_FRAME, 2);
            }
            
            if (window == 2 && window_timer == get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH) && free){
                axe.sw = {
                    _can_be_grounded: false,
                    _ignores_walls: false,
                    _free: true,
                    _x: x,
                    _y: y-72,
                    // _hsp: hsp/2, // there was an attempt but I don't think it feels too good
                    // it also makes the move WAY better, and the "holding axe" state is already
                    // incredibly overpowered compared to noaxe
                    _hsp: 0,
                    _vsp: -12,
                    _sfx: "sfx_kragg_throw",
                    _hitbox: [AT_UAIR, 3, 0, 0],
                    _particle: noone,
                    _state: 6
                }
                axe.state = 0;
            }
            
            if (window == at_length && window_timer == win_length){
                reset_attack_value(attack, AG_SPRITE);
                
                var i;
                for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                    reset_hitbox_value(attack, i, HG_WINDOW);
                }
                
                reset_window_value(attack, 1, AG_WINDOW_LENGTH);
                reset_window_value(attack, 1, AG_WINDOW_SFX);
                reset_window_value(attack, 1, AG_WINDOW_SFX_FRAME);
            }
        }else{
            if (window == 1 && window_timer == 1){
                reset_attack_value(attack, AG_SPRITE);
                
                var i;
                for (i = 1; i < get_num_hitboxes(attack) + 1; i++){
                    reset_hitbox_value(attack, i, HG_WINDOW);
                }
                
                reset_window_value(attack, 1, AG_WINDOW_LENGTH);
                reset_window_value(attack, 1, AG_WINDOW_SFX);
                reset_window_value(attack, 1, AG_WINDOW_SFX_FRAME);
            }
        }
    break;
}

if (attack == AT_TAUNT){
    if (window == 2 && window_timer > 24 && taunt_down){
        taunt_cancel = true;
        window_timer = 0;
    }
    
    if (taunt_cancel > 0){
        iasa_script();
    }
}
