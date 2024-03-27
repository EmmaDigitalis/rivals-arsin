// some VERY basic ai stuff
// but tbh, you probably shouldn't fight them as an ai
if (ai_recovering){
    if (move_cooldown[AT_USPECIAL] > 0){
        // use Fspecial when Uspecial is on cooldown
        if ((has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
            up_down = false;
            special_pressed = true;
        }
    }
}

if (state == 96){
    if (state_timer == 10 || tension == 99){
        jump_down = true;
    }
}