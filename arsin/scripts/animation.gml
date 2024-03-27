// based on hodan's command grab (ily Team NeRVe)

if (attack == AT_USTRONG) {
    // This is the code for the grab attack. It has to be here because this is
    // an early script in the load order, which means the enemy will properly move with the attack
    if (window > 2 && grabbed != -1) {
        with (grabbed){
        	set_state(PS_HITSTUN);
	        can_jump = false;
	        can_shield = false;
	        can_attack = false;
	        can_strong = false;
	        can_wall_jump = false;
	        can_fast_fall = false;
        }
        
		// disable enemy movement
	  	grabbed.hsp = 0;
		grabbed.vsp = 0;
		
		if (window == 3){
			// disable collision so other players can't interupt
			// store the opponent's mask so it can be restored later
			if (grabbed_mask == -1){
				grabbed_mask = grabbed.mask_index;
				grabbed_hurtbox = grabbed.hurtboxID.sprite_index;
				grabbed.mask_index = asset_get("empty_sprite");
				grabbed.hurtboxID.sprite_index = asset_get("empty_sprite");
				grabbed.spr_dir = 1 * -spr_dir;
			}
		}
		
		// move the player around based on the frame of the image
		var frame = image_index - get_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START);
		
		switch (frame){
			// stab frames
			case 0:
				grabbed.x = x + (8 * spr_dir);
				grabbed.y = y-80;
			break;
			
			case 1:
				grabbed.x = x + (8 * spr_dir);
				grabbed.y = y-80;
			break;
			
			case 2:
				grabbed.x = x + (8 * spr_dir);
				grabbed.y = y-74;
			break;
			
			// fall frames
			case 3:
				grabbed.x = x + (10 * spr_dir);
				grabbed.y = y-70;
			break;
			
			case 4:
				grabbed.x = x + (16 * spr_dir);
				grabbed.y = y-60;
				
				// allow player to fall down during a portion of the fall
				// love you Team NeRVe mwah mwah
				if (left_down) {
					spr_dir = -1;
				} else if (right_down) {
					spr_dir = 1;
				}
				grabbed.spr_dir = 1 * -spr_dir;
			break;
			
			case 5:
				grabbed.x = x + (18 * spr_dir);
				grabbed.y = y-56;
			break;
			
			case 6:
				grabbed.x = x + (20 * spr_dir);
				grabbed.y = y-52;
			break;
			
			// normal endlag frame 1
			case 7:
			break;
			
			// normal endlag frame 2
			case 8:
			break;
			
			// land frame 1
			case 9:
				grabbed.x = x + (56 * spr_dir);
				grabbed.y = y+6;
				grabbed.fall_through = true;
			break;
			
			case 10:
				grabbed.x = x + (58 * spr_dir);
				grabbed.y = y+2;
			break;
			
			// throw frame
			case 11:
				// move player away from the floor
				grabbed.y = y-24;
				// set a trajectory to follow through
				grabbed.free = true;
				// grabbed.vsp = 30;
				// grabbed.hsp = 30 * spr_dir;
				grabbed.fall_through = false;
				
				// free the opponent
				grabbed.mask_index = grabbed_mask;
				grabbed.hurtboxID.sprite_index = grabbed_hurtbox;
				grabbed_mask = -1;
				grabbed_hurtbox = -1;
				grabbed = -1;
			break;
			
			// all frames beyond this are endlag frames of the throw animation
		}
    }
}

// // Putting this in animation so it happens before the character is rendered
if (grabbed != -1 && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USTRONG)) {
	grabbed.mask_index = grabbed_mask;
	grabbed.hurtboxID.sprite_index = grabbed_hurtbox;
	grabbed_mask = -1;
	grabbed_hurtbox = -1;
	grabbed.fall_through = false;
	grabbed = -1;
}