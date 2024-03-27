//article1_init

// init = 0;
sprite_index = sprite_get("axe");
mask_index = sprite_get("axe_hurt");

enum STATES {
    SWITCH = 0,
    THROWN = 1,
    STUCK = 2,
    AXEPLOSION = 3,
    POPOUT = 4,
    RETURN = 5,
    UAIR = 6,
    DSTRONG = 7,
    HELD = 10
}

state = 10;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
uses_shader = true;

rising_gravity = 0.6175
falling_gravity = 1.475;

surface = "floor"; // surface the axe has landed on, determines sprite the axe has when stuck on the ground, what direction dspecial will blow towards, and the start of the axe recovery animation

dstrong_uppies = 1.8;

throw_speed = 14.25;
throw_angle = 37; //lower is more vertical, higher is more horizontal
throw_up = (35 - throw_angle) + 20;
throw_down = (35 - throw_angle) + 65;


max_fall_speed = 18; 
swing_speed = 18; // how fast the axe is allowed to swing down to the player
swing_acceleration = 0.4;

meteor = false;

return_accel = 2.3;
max_return_speed = 24;

charge_effect = false;

// last frame's speed
old_hsp = 0;

// state switcher
// object with variables used for state switching.
// used to include angle and image, angle is always 0 now. image always gets reset to 0.
sw = {
    _can_be_grounded: false,
    _ignores_walls: true,
    _free: true,
    _x: 0,
    _y: 0,
    _hsp: 0,
    _vsp: 0,
    _sfx: noone,
    _hitbox: noone, 
    //when attaching a hitbox, should be an array formatted as [AT_INDEX, HB_INDEX, x-offset, y-offset]
    _particle: noone,
    _state: 10
}
