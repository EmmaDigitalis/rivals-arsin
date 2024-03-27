//hitbox_update

// make axe throw hitboxes follow the axe
if (instance_exists(player_id.axe)){
    if (attack == AT_NSPECIAL){
        if (player_id.axe.state == 1 || player_id.axe.state == 5){
            hsp = player_id.axe.hsp;
            vsp = player_id.axe.vsp;
            hitbox_timer = 0;
        }else{
            instance_destroy();
            exit;
        }
    }
    
    if (attack == AT_DSPECIAL_2 && hbox_num == 1){
        if (player_id.axe.state == 3){
            hsp = player_id.axe.hsp;
            vsp = player_id.axe.vsp;
            hitbox_timer = 0;
        }else{
            instance_destroy();
            exit;
        }
    }
    
    if (attack == AT_UAIR && hbox_num == 3){
        if (player_id.axe.state == 6){
            hsp = player_id.axe.hsp;
            vsp = player_id.axe.vsp;
            hitbox_timer = 0;
        }else{
            instance_destroy();
            exit;
        }
    }
    
    if (attack == AT_DSTRONG && hbox_num == 2){
        if (player_id.axe.state == 7 && player_id.axe.vsp < 12){
            hsp = player_id.axe.hsp;
            vsp = player_id.axe.vsp;
            hitbox_timer = 0;
        }else{
            if (player_id.axe.vsp >= 12 && in_hitpause == false){
                create_hitbox(AT_DSTRONG, 3, player_id.axe.x, player_id.axe.y+20)    
            }
            instance_destroy();
            exit;
        }
    }
    
    if (attack == AT_DSTRONG && hbox_num == 3){
        // only destroy meteor hitboxes if on wall or caught by player
        if (player_id.axe.state != 2 && player_id.axe.state != 10 && player_id.axe.vsp > 4){
            hsp = player_id.axe.hsp;
            vsp = player_id.axe.vsp;
            hitbox_timer = 0;
        }else{
            if (player_id.axe.vsp <= 4 && in_hitpause == false){
                create_hitbox(AT_DSTRONG, 2, player_id.axe.x, player_id.axe.y)
                instance_destroy();
                exit
            };
        }
    }
}

// check if uspecial on wall, and wallcling if it does
if (attack == AT_USPECIAL && hbox_num == 6){
    if (player_id.tension < player_id.tension_max){
        if (place_meeting(x, y, asset_get("par_block"))){
            with (player_id){
                if (spr_dir == 1){
                    cling_wall = "right";
                    while ( !instance_place(x+1, y, asset_get("par_block")) ){
                        x += 1;
                    }
                    
                    while ( !instance_place(x+1, y-132, asset_get("par_block")) ){
                        y += 16;
                    }
                }else{
                    cling_wall = "left";
                    while ( !instance_place(x-1, y, asset_get("par_block")) ){
                        x -= 1;
                    }
                    
                    while ( !instance_place(x-1, y-132, asset_get("par_block")) ){
                        y += 16;
                    }
                }
                spawn_hit_fx( x+(12*spr_dir), y-108, HFX_KRA_ROCK_SMALL );
                sound_play(asset_get("sfx_kragg_rock_land"));
                state = 96;
            }
            
            instance_destroy();
            exit;
        }
    }
}
