//hit_player - called when one of your hitboxes hits a player

var i;
// check if the current hitbox uses the axe
for (i = 0; i < array_length(axe_hitboxes); i++){
    if (my_hitboxID.attack == axe_hitboxes[i][0] && my_hitboxID.hbox_num >= axe_hitboxes[i][1]){ //axe hitboxes are always the last in the list
        if (heat && (dspecial_type == 1 || my_hitboxID.attack == AT_DSPECIAL_2)){
            shake_camera( 5, 8);
            spawn_hit_fx( hit_player_obj.x-(8*hit_player_obj.spr_dir), hit_player_obj.y - hit_player_obj.char_height, hfx_zet_fire_big_recolor ); //recolored version so it gets shaded
            var temp_fx = spawn_hit_fx( hit_player_obj.x-(8*hit_player_obj.spr_dir), hit_player_obj.y - hit_player_obj.char_height, hfx_heat_slash );
            temp_fx.depth = hit_player_obj.depth - 1;
            sound_play(asset_get("sfx_flareo_rod"))
            sound_play(asset_get("sfx_blow_heavy2"))
            hit_player_obj.should_make_shockwave = true;
            
            with (hit_player_obj){
                take_damage(player, other.player, 8);
            }
            
            switch (my_hitboxID.attack){
                // knockback focused, should kill early
                case AT_BAIR:
                    hit_player_obj.orig_knock += 6;
                    
                    hitstop += 12;
                    hitstop_full += 12;
                    
                    with (hit_player_obj){
                        hitstop += 20;
                        hitstop_full += 20;
                        hitstun += 6;
                        hitstun_full += 6;
                    }
                break;
                
                // should change very little: explosion hitbox already does its work
                case AT_DSPECIAL_2:
                    with (hit_player_obj){
                        hitstun += 3;
                        hitstun_full += 3;
                    }
                break;
                
                // less hitstop, so it's harder to react to it
                case AT_DSTRONG:
                    hit_player_obj.orig_knock += 6;
                    
                    hitstop = 5;
                    hitstop_full = 5;
                    
                    with (hit_player_obj){
                        hitstop = 8;
                        hitstop_full = 8;
                        hitstun += 4;
                        hitstun_full += 4;
                    }
                break;
                
                // combo focused, more hitstop and hitstun
                case AT_DTILT:
                    hit_player_obj.orig_knock += 1;
                    
                    hitstop += 10;
                    hitstop_full += 10;
                    
                    with (hit_player_obj){
                        hitstop += 18;
                        hitstop_full += 18;
                        hitstun += 6;
                        hitstun_full += 6;
                    }
                break;
                
                // switches from a combo move to a kill move, kills around 110%
                case AT_FSPECIAL:
                    hit_player_obj.orig_knock *= 1.9;
                    
                    hitstop += 13;
                    hitstop_full += 13;
                    
                    with (hit_player_obj){
                        hitstop += 13;
                        hitstop_full += 13;
                        hitstun += 3;
                        hitstun_full += 3;
                    }
                break;
                
                // gimp-focused, more hitstun so the player can't act as fast
                case AT_FTILT:
                    hit_player_obj.orig_knock += 2;
                    
                    hitstop += 12;
                    hitstop_full += 12;
                    
                    with (hit_player_obj){
                        hitstop += 20;
                        hitstop_full += 20;
                        hitstun += 8;
                        hitstun_full += 8;
                    }
                break;
                
                // combo-focused, probably the worst option, but it still needs to lead into jab 3
                case AT_JAB:
                    
                    hitstop += 5;
                    hitstop_full += 5;
                    
                    with (hit_player_obj){
                        hitstop += 8;
                        hitstop_full += 8;
                        hitstun += 4;
                        hitstun_full += 4;
                    }
                break;
                
                // huge hitstop difference allows for big follow-ups
                case AT_NAIR:
                    hit_player_obj.orig_knock += 1;
                    
                    hitstop += 4;
                    hitstop_full += 4;
                    
                    with (hit_player_obj){
                        hitstop += 24;
                        hitstop_full += 24;
                    }
                break;
                
                // average choice for off-stage shenanigans
                case AT_NSPECIAL:
                    hit_player_obj.orig_knock += 2;
                    
                    hitstop += 6;
                    hitstop_full += 6;
                    
                    with (hit_player_obj){
                        hitstop += 18;
                        hitstop_full += 18;
                        hitstun += 8;
                        hitstun_full += 8;
                    }
                break;
                
                // goes from a disruptive move to a kill move starting around 90%
                case AT_UAIR:
                    hit_player_obj.orig_knock += 4;
                    hit_player_obj.orig_knock *= 1.3;
                    
                    hitstop += 17;
                    hitstop_full += 17;
                    
                    with (hit_player_obj){
                        hitstop += 20;
                        hitstop_full += 20;
                        hitstun += 6;
                        hitstun_full += 6;
                    }
                break;
                
                // kill-focused
                case AT_USPECIAL:
                    hit_player_obj.orig_knock *= 1.5;
                    hit_player_obj.orig_knock += 4;
                    
                    hitstop += 3;
                    hitstop_full += 3;
                    
                    with (hit_player_obj){
                        hitstop += 20;
                        hitstop_full += 20;
                        hitstun += 5;
                        hitstun_full += 5;
                    }
                break;
                
                // combo-focused
                case AT_UTILT:
                    
                    hitstop += 6;
                    hitstop_full += 6;
                    
                    with (hit_player_obj){
                        hitstop += 18;
                        hitstop_full += 18;
                        hitstun += 12;
                        hitstun_full += 12;
                    }
                break;
            }
            
            heat = false;
        }else{
            var temp_fx = spawn_hit_fx( hit_player_obj.x-(8*hit_player_obj.spr_dir), hit_player_obj.y - hit_player_obj.char_height, hfx_slash );
            temp_fx.depth = hit_player_obj.depth - 1;
        }
    }
}

// slow down when you hit an opponent mid-yoink
// this to better allow follow-ups
if (yoink_friction_timer != 0 || yoink_speed != 0){
    yoink_cancel = true;
    yoink_speed = 0;
    yoink_friction_timer = min(yoink_friction_timer, 3);
}

// grab with the first hitbox
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1) {
    shake_camera( 6, 10);
    if (grabbed == -1 && !hit_player_obj.super_armor) {
        // Doesn't work on super armoured opponents
        grabbed = hit_player_obj;
    }
} 
