//article1_update
state_timer++;

if (charge_effect == true){
    if (player_id.heat == true){
        spawn_hit_fx( x, y+28, HFX_ZET_SHINE_FG );
    }else{
        spawn_hit_fx( x, y, HFX_WRA_WIND_SMALL );
    }
    
    sound_play(asset_get("sfx_ori_ustrong_charge"));
    charge_effect = false;
}

switch (state){
    // state switcher
    case 0:
        if (sw._state == 10){
            sprite_index = asset_get("empty_sprite");    
        }
        // article variables
        free = sw._free;
        can_be_grounded = sw._can_be_grounded;
        ignores_walls = sw._ignores_walls;
        
        // position and movement variables
        x = sw._x;
        y = sw._y;
        hsp = sw._hsp;
        vsp = sw._vsp;
        
        // reset some defaults
        if (sw._state != 5 && sw._state != 1){  
            /*
            don't reset image_index if going to RETURN state
            as the state naturally transitions from previous states
            */
            image_index = 0; 
        }
        image_alpha = 1;
        
        // create sfx, hitbox and particle if needed
        if (sw._sfx != noone){
            sound_play(asset_get(sw._sfx));    
        }
        
        if (sw._hitbox != noone){
            create_hitbox(sw._hitbox[0], sw._hitbox[1], round(x)+sw._hitbox[2], round(y)+sw._hitbox[3]); 
            sw._hitbox = noone;
        }
            
        if (sw._particle != noone){
            spawn_hit_fx( x, y, sw._particle );
        }
        
        // switch to the new state
        state_timer = 0;
        state = sw._state;
    break;
    
    // THROWN
    case 1:
    
    
        // get some useful information for checks and calculations
        var distance_to_player = point_distance(player_id.hand_x, player_id.hand_y, x, y);
        var angle_to_player = point_direction(x, y, player_id.hand_x, player_id.hand_y);
        
        
        // returns -1 if player is moving left, 1 if right
        var player_movement_direction = sign(player_id.hsp);
            
        // returns -1 if player is left of axe, 1 if right
        var player_relative_position = sign(ceil(lengthdir_x(point_distance(x, y, player_id.x, player_id.y), point_direction(x, y, player_id.x, player_id.y))))
            
            
        if (free){
            
            // limit horizontal speed when throwing too high
            // this so neutral throw doesn't yoink you
            // but recovery still has max potential
            if (vsp < lengthdir_y(throw_speed, throw_angle) * 0.8){
                hsp = hsp * 0.93;    
            }
            
            if (!player_id.heat){
                sprite_index = sprite_get("axe");
            }else{
                sprite_index = sprite_get("axe_hot");
            }
            
            // conditional rotation instead of calculated
            // to make sure there's some rotation if hsp == 0 as well
            if (sign(hsp) > 0){
                image_index += 0.7    
            }else{
                image_index -= 0.7
            }
            
            // pulls the axe along when wavelanding, but only from a specific distance
            // if (player_id.state = 21){
            //     if (player_movement_direction == player_relative_position){
            //         hsp = player_id.hsp;
            //     }
            // }
            
            // ^ removed so you can wavedash for instant yoinks, instead of having some throw mixups
            
            
            // switch to different behaviour when the axe is both:
            // 1: below the initial throw height
            // 2: below the player
            if (y > sw._y + 24 && y > player_id.y + 24){
                
                // check if the axe has surpassed the max length of the chain 
                if(distance_to_player > player_id.chain_max_length){
                    // get some info about how the axe is traveling 
                    var travel_spd = point_distance(0, 0, hsp, vsp);
                    var travel_dir = point_direction(0, 0, hsp, vsp);
                    
                    //speed manipulation
                    if (x < player_id.hand_x + 48 && x > player_id.hand_x - 48){
                        travel_spd = travel_spd / 1.3;
                    }else{
                        if (travel_spd > (swing_speed + (swing_acceleration / 2))){
                            travel_spd -= swing_acceleration;
                        }else if (travel_spd < (swing_speed - (swing_acceleration / 2))){
                            travel_spd += swing_acceleration;
                        }
                    }
                    
                    //rotate in an arc when below throw point
                    if (x < player_id.hand_x){
                        travel_dir = angle_to_player - 90;
                    }else{
                        travel_dir = angle_to_player + 90;
                    }
                    
                    //move toward player if too far away
                    if (abs(distance_to_player) > player_id.chain_pull_length){
                        x += lengthdir_x(0.1, angle_to_player);
                        y += lengthdir_y(0.1, angle_to_player);
                    }
                    
                    // change hsp and vsp to be special, rotating around the player, towards directly below them
                    hsp = lengthdir_x(travel_spd, travel_dir);
                    vsp = lengthdir_y(travel_spd, travel_dir);
                }
            }else{
                // if above the player, apply gravity as normal
                if (vsp < max_fall_speed){
                    if (vsp < -1.4){
                        vsp += rising_gravity;
                    }else{
                        vsp += falling_gravity;
                    }    
                }else{
                    vsp = max_fall_speed;
                }
                
                // prevent axe from travelling to far horizontally
                if(distance_to_player > player_id.chain_max_length){
                    hsp = hsp * 0.97;
                }
            }
            
            // check if on wall
            if (hit_wall){
        
                if ( instance_place(bbox_right, y, asset_get("par_block")) ){
                    surface = "wall_right";
                    while ( instance_place(x, y, asset_get("par_block")) ){
                        x -= 1;
                    }
                }
                
                if ( instance_place(bbox_left, y, asset_get("par_block")) ){
                    surface = "wall_left";
                    while ( instance_place(x, y, asset_get("par_block")) ){
                        x += 1;
                    }
                }
                
                sw = {
                    _can_be_grounded: true,
                    _ignores_walls: false,
                    _free: false,
                    _x: x,
                    _y: y,
                    _hsp: 0,
                    _vsp: 0,
                    _sfx: "sfx_kragg_rock_land",
                    _hitbox: noone,
                    _particle: noone,
                    _state: 2
                }
                state = 0;
            }
            
            if (abs(hsp) < 1 && abs(vsp) < 1){
                sw = {
                    _can_be_grounded: false,
                    _ignores_walls: true,
                    _free: true,
                    _x: x,
                    _y: y,
                    _hsp: hsp,
                    _vsp: vsp,
                    _sfx: noone,
                    _hitbox: noone,
                    _particle: noone,
                    _state: 5
                }
                state = 0;
            }
        }else{
            // move the axe back onto the platform if it clips a corner
            if ( instance_place(bbox_left, bbox_bottom, asset_get("par_block")) || instance_place(bbox_right, bbox_bottom, asset_get("par_block")) ){
                while ( instance_place(bbox_right, y, asset_get("par_block")) ){
                    x += 1;
                    y -= 2;
                }
                while ( instance_place(bbox_left, y, asset_get("par_block")) ){
                    x -= 1;
                    y -= 2;
                }
            }
            
            // make sure the majority of the axe is on a platform
            if (place_meeting(x, y, asset_get("par_jumpthrough"))){
                // check if the middle of the axe is one a platform
                while (!instance_position(x, bbox_bottom, asset_get("par_jumpthrough"))){
                    // move right if the left side is not on the platform
                    if (!instance_position(bbox_left, bbox_bottom, asset_get("par_jumpthrough"))){
                        x += 8;
                    }
                    
                    // move left if the right side is not on the platform
                    if (!instance_position(bbox_right, bbox_bottom, asset_get("par_jumpthrough"))){
                        x -= 8;
                    }    
                }
            }
            
            // switch to STUCK state
            sw = {
                _can_be_grounded: true,
                _ignores_walls: false,
                _free: false,
                _x: x,
                _y: y,
                _hsp: 0,
                _vsp: 0,
                _sfx: "sfx_kragg_rock_land",
                _hitbox: noone,
                _particle: noone,
                _state: 2
            }
            surface = "floor"
            state = 0;
        }
    break;
    
    // STUCK
    case 2:
        // returns -1 if player is left of axe, 1 if right
        var player_relative_position = sign(ceil(lengthdir_x(point_distance(x, y, player_id.x, player_id.y), point_direction(x, y, player_id.x, player_id.y))))
            
        switch (surface){
            case ("floor"):
                if (!player_id.heat){
                    sprite_index = sprite_get("axe_stuck_floor");
                }else{
                    sprite_index = sprite_get("axe_stuck_floor_hot");
                }
            break;
            
            case ("wall_right"):
                if (!player_id.heat){
                    sprite_index = sprite_get("axe_stuck_wall");
                }else{
                    sprite_index = sprite_get("axe_stuck_wall_hot");
                }
                image_xscale = 1;
            break;
            
            case ("wall_left"):
                if (!player_id.heat){
                    sprite_index = sprite_get("axe_stuck_wall");
                }else{
                    sprite_index = sprite_get("axe_stuck_wall_hot");
                }
                image_xscale = -1;
            break;
        }
        
        
        if (player_id.tension > player_id.tension_max * 0.8){ // almost out
            if (player_relative_position == 1){ // player is right 
                image_index = 4;
            } else { // player is left
                image_index = 2;
            }
        }else if (player_id.tension > player_id.tension_max * 0.4){ // loosening
            if (player_relative_position == 1){ // player is right 
                image_index = 3;
            } else { // player is left
                image_index = 1;
            }
        }else{ // stuck
            image_index = 0;
        }
    break;
    
    // AXEPLOSION DSPECIAL
    case 3:
    
        if (!player_id.heat){
            sprite_index = sprite_get("axe");
        }else{
            sprite_index = sprite_get("axe_hot");
        }
        if (state_timer == 1 && player_id.dspecial_type == 2){
            spawn_hit_fx( x, y, HFX_ELL_BOOM_BIG );
            sound_play(asset_get("sfx_ell_uspecial_explode"));    
        }
        image_index -= 0.7;
        
        switch (surface){
            case ("wall_right"):
                hsp = clamp(((14 - state_timer) / 2), 0, 6) * -1;
            break;
            
            case ("wall_left"):
                hsp = clamp(((14 - state_timer) / 2), 0, 6);
            break;
            
            default:
                vsp = clamp(((14 - state_timer) / 2), 0, 6) * -1;
        }
        
        if (state_timer == 7){
            player_id.heat = false;
            player_id.dspecial_type = 1;
        }
        
        if (state_timer > 14){
            // fall back to ground
            sw = {
                    _can_be_grounded: false,
                    _ignores_walls: false,
                    _free: true,
                    _x: x,
                    _y: y,
                    _hsp: hsp,
                    _vsp: vsp,
                    _sfx: noone,
                    _hitbox: noone,
                    _particle: noone,
                    _state: 1
                }
            state = 0;
        }
    break;
    
    // NSPECIAL POPOUT/RECALL
    case 4:
    
        if (!player_id.heat){
            sprite_index = sprite_get("axe");
        }else{
            sprite_index = sprite_get("axe_hot");
        }
        image_index += 0.7;
        image_alpha = 0.6;
        
        switch (surface){
            case ("wall_right"):
                hsp = clamp(((8 - state_timer) / 2), 0, 4) * -1;
            break;
            
            case ("wall_left"):
                hsp = clamp(((8 - state_timer) / 2), 0, 4);
            break;
            
            default:
                vsp = clamp(((8 - state_timer) / 2), 0, 4) * -1;
        }
        
        // make catchable
        if (place_meeting(x, y, player_id) && state_timer > 8){
            sw = {
                _can_be_grounded: false,
                _ignores_walls: true,
                _free: true,
                _x: player_id.hand_x,
                _y: player_id.hand_y,
                _hsp: 0,
                _vsp: 0,
                _sfx: "sfx_ell_utilt_retract",
                _hitbox: noone,
                _particle: noone,
                _state: 10
            }
            state = 0;
        }
        
        if (state_timer > 3){
            // switch to RETURN state
            sw = {
                _can_be_grounded: false,
                _ignores_walls: true,
                _free: true,
                _x: x,
                _y: y,
                _hsp: hsp,
                _vsp: vsp,
                _sfx: noone,
                _hitbox: [AT_NSPECIAL, 2, 0, 0],
                _particle: noone,
                _state: 5
            }
            state = 0;
        }
    break;
    
    
    // RETURN TO PLAYER
    case 5:
        surface = "floor"
        if (!player_id.heat){
            sprite_index = sprite_get("axe");
        }else{
            sprite_index = sprite_get("axe_hot");
        }
        image_index += 0.7;
        
        // get some useful information for checks and calculations
        var distance_to_player = point_distance(player_id.hand_x, player_id.hand_y, x, y);
        var angle_to_player = point_direction(x, y, player_id.hand_x, player_id.hand_y);
            
        
        // set return speed in such a way that the axe will go back to the player in about half a second
        var cur_spd = abs(point_distance(0, 0, hsp, vsp));
        var end_spd = max(24, (distance_to_player / 7));
        
        var return_spd;
        
        // standard approach function
        if (cur_spd < end_spd) {
           return_spd = min(cur_spd + return_accel, end_spd);
        } else {
           return_spd = max(cur_spd - return_accel, end_spd);
        }
        
        if (return_spd > max_return_speed){
            return_spd = max_return_speed;    
        }
        
        // set hsp and vsp so axe actually goes back to player
        hsp = lengthdir_x(return_spd, angle_to_player);
        vsp = lengthdir_y(return_spd, angle_to_player);
        
        // it's so nice when things are easy to program
        
        // check if the axe should pass through walls
        if (ignores_walls){
            image_alpha = 0.6;
        }else{
            image_alpha = 1;
            
            // check if on wall
            if (hit_wall){
                 if ( instance_place(bbox_right, y, asset_get("par_block")) ){
                    surface = "wall_right";
                    while ( instance_place(x, y, asset_get("par_block")) ){
                        x -= 1;
                    }
                }
                
                if ( instance_place(bbox_left, y, asset_get("par_block")) ){
                    surface = "wall_left";
                    while ( instance_place(x, y, asset_get("par_block")) ){
                        x += 1;
                    }
                }
                sw = {
                    _can_be_grounded: true,
                    _ignores_walls: false,
                    _free: false,
                    _x: x,
                    _y: y,
                    _hsp: 0,
                    _vsp: 0,
                    _sfx: "sfx_kragg_rock_land",
                    _hitbox: noone,
                    _particle: noone,
                    _state: 2
                }
                state = 0;
            }  
        }
        
        // make catchable
        if (place_meeting(x, y, player_id)){
            sw = {
                _can_be_grounded: false,
                _ignores_walls: true,
                _free: true,
                _x: player_id.hand_x,
                _y: player_id.hand_y,
                _hsp: 0,
                _vsp: 0,
                _sfx: "sfx_ell_utilt_retract",
                _hitbox: noone,
                _particle: noone,
                _state: 10
            }
            state = 0;
        }
    break;
        
    // UAIR
    case 6:
        // separate throw state for UAIR
        // will not get stuck on walls, only floors and ceilings, as its movement is only vertical
        // drags the player along if below the player, instead of being dragged along
        // catchable
        // cannot be pulled by wavelanding
            
        // get some useful information for checks and calculations
        var distance_to_player = point_distance(player_id.hand_x, player_id.hand_y, x, y);
        var angle_to_player = point_direction(x, y, player_id.hand_x, player_id.hand_y);
            
        // returns -1 if player is left of axe, 1 if right
        var player_relative_position = sign(ceil(lengthdir_x(point_distance(x, y, player_id.x, player_id.y), point_direction(x, y, player_id.x, player_id.y))))
            
            
        if (free){
            if (!player_id.heat){
                sprite_index = sprite_get("axe");
            }else{
                sprite_index = sprite_get("axe_hot");
            }
            image_index += 0.7;
            
            if (vsp < max_fall_speed){
                if (vsp < -1.4){
                    vsp += rising_gravity;
                }else{
                    vsp += falling_gravity;
                }    
            }else{
                vsp = max_fall_speed;
            }
            
            // make catchable while falling
            if (vsp > 0 && place_meeting(x, y, player_id)){
                sw = {
                    _can_be_grounded: false,
                    _ignores_walls: true,
                    _free: true,
                    _x: player_id.hand_x,
                    _y: player_id.hand_y,
                    _hsp: 0,
                    _vsp: 0,
                    _sfx: "sfx_ell_utilt_retract",
                    _hitbox: noone,
                    _particle: noone,
                    _state: 10
                }
                state = 0;
            }
            
            // lowers upward movement if out of player range
            var distance_to_player = point_distance(player_id.hand_x, player_id.hand_y, x, y);
            if (distance_to_player > player_id.chain_max_length && vsp < 0 && y < player_id.hand_y){
                vsp = vsp * 0.7;
            }
        }else{
            // move the axe back onto the platform if it clips a corner
            if ( instance_place(bbox_left, bbox_bottom, asset_get("par_block")) || instance_place(bbox_right, bbox_bottom, asset_get("par_block")) ){
                while ( instance_place(bbox_right, y, asset_get("par_block")) ){
                    x += 1;
                    y -= 2;
                }
                while ( instance_place(bbox_left, y, asset_get("par_block")) ){
                    x -= 1;
                    y -= 2;
                }
            }
            
            // make sure the majority of the axe is on a platform
            if (place_meeting(x, y, asset_get("par_jumpthrough"))){
                // check if the middle of the axe is one a platform
                while (!instance_position(x, bbox_bottom, asset_get("par_jumpthrough"))){
                    // move right if the left side is not on the platform
                    if (!instance_position(bbox_left, bbox_bottom, asset_get("par_jumpthrough"))){
                        x += 8;
                    }
                    
                    // move left if the right side is not on the platform
                    if (!instance_position(bbox_right, bbox_bottom, asset_get("par_jumpthrough"))){
                        x -= 8;
                    }    
                }
            }
            sw = {
                _can_be_grounded: true,
                _ignores_walls: false,
                _free: false,
                _x: x,
                _y: y,
                _hsp: 0,
                _vsp: 0,
                _sfx: "sfx_kragg_rock_land",
                _hitbox: noone,
                _particle: noone,
                _state: 2
            }
            surface = "floor"
            state = 0;
        }
    break;
    
    // DSTRONG
    case 7:
        // separate throw state for DSTRONG
        // only gets stuck in walls after finishing bungee motion
        // cannot be pulled by wavelanding

        if (free){
            if (!player_id.heat){
                sprite_index = sprite_get("axe");
            }else{
                sprite_index = sprite_get("axe_hot");
            }
            image_index -= 0.7;
            
            if (vsp > max_fall_speed - 3 && meteor == false){
                destroy_hitboxes();
            }
            
            // switch to different behaviour when the axe is:
            // below spawn position + chain_pull_length
            if (vsp > 0){ // if falling
                // fall if within pull distance
                if(y - sw._y < player_id.chain_pull_length / 2.5){ // if inside axe area
                    if (vsp < max_fall_speed){
                        vsp += falling_gravity;
                    }else{
                        vsp = max_fall_speed;
                    }
                } else { // bungee
                    vsp -= dstrong_uppies;
                }
            }else{ // rebound stuff
                if(y - sw._y < player_id.chain_pull_length/2){ // if inside axe area
                    // switch to RETURN state
                    sw = {
                        _can_be_grounded: false,
                        _ignores_walls: false,
                        _free: true,
                        _x: x,
                        _y: y,
                        _hsp: hsp,
                        _vsp: vsp,
                        _sfx: noone,
                        _hitbox: noone,
                        _particle: noone,
                        _state: 5
                    }
                    state = 0;
                } else { // bungee part 2, electric boogaloo
                    vsp -= dstrong_uppies;
                }
            }
            
        }else{ //pin to the ground
        
            // move the axe back onto the platform if it clips a corner
            if ( instance_place(bbox_left, bbox_bottom, asset_get("par_block")) || instance_place(bbox_right, bbox_bottom, asset_get("par_block")) ){
                
                if (!instance_position(bbox_left, bbox_bottom, asset_get("par_block"))){
                    x += 16;
                }
                    
                // move left if the right side is not on the platform
                if (!instance_position(bbox_right, bbox_bottom, asset_get("par_block"))){
                    x -= 16;
                } 
                
                while ( instance_place(bbox_right, y, asset_get("par_block")) || instance_place(bbox_left, y, asset_get("par_block")) ){
                    y -= 2;
                }
            }
            
            // make sure the majority of the axe is on a platform
            if (place_meeting(x, y, asset_get("par_jumpthrough"))){
                // check if the middle of the axe is one a platform
                while (!instance_position(x, bbox_bottom, asset_get("par_jumpthrough"))){
                    // move right if the left side is not on the platform
                    if (!instance_position(bbox_left, bbox_bottom, asset_get("par_jumpthrough"))){
                        x += 8;
                    }
                    
                    // move left if the right side is not on the platform
                    if (!instance_position(bbox_right, bbox_bottom, asset_get("par_jumpthrough"))){
                        x -= 8;
                    }    
                }
            }
        
            sw = {
                _can_be_grounded: true,
                _ignores_walls: false,
                _free: false,
                _x: x,
                _y: y,
                _hsp: 0,
                _vsp: 0,
                _sfx: "sfx_kragg_rock_land",
                _hitbox: noone,
                _particle: noone,
                _state: 2
            }
            surface = "floor"
            state = 0;
        }
    break;
        
    case 10:
        x = player_id.x;
        y = player_id.y;
        sprite_index = sprite_get("no_axe");
        surface = "floor"
    break;
    
}
