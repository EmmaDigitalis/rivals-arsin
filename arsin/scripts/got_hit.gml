//got_hit - called when you're hit by a hitbox

if (axe.state == 10){
    heat = false;
}
dspecial_type = 1; // make sure you don't get stuck in not being able to use heat attacks anymore

// stop when you get hit mid-yoink
// this to better allow follow-ups
if (yoink_friction_timer > 0 || yoink_speed != 0){
    hsp = 0;
    yoink_friction_timer = 0;
    yoink_speed = 0;
}