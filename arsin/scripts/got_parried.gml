//got_parried - called when an opponent parries your attack

//opponent takes chip damage when they parry a heat attack
if (heat){
    
    var i;
    // check if the current hitbox uses the axe
    for (i = 0; i < array_length(axe_hitboxes); i++){
        if (my_hitboxID.attack == axe_hitboxes[i][0] && my_hitboxID.hbox_num >= axe_hitboxes[i][1]){ //axe hitboxes are always the last in the list
            shader_start();
                spawn_hit_fx( x, y - char_height, hfx_zet_fire_big_recolor ); //recolored version so it gets shaded
            shader_end();
            sound_play(asset_get("sfx_flareo_rod"));
            take_damage(player, -1, 8);
            heat = false;
        }
    }
}