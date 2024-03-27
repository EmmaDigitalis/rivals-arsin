hurtbox_spr = sprite_get("arsin_hurtbox");
crouchbox_spr = sprite_get("arsin_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

axe_animation = sprite_get("idle_axe"); // axe animation used in the old animation system. UNUSED
axe = noone; // id of the axe belonging to this player
heat = false;

distance_to_axe = 0;
chain_pull_length = 192; // the distance from where the player will start being slowed down by the axe
chain_max_length = 224; // the distance from where you can start slingshotting
chain_loose_length = 240; // the distance where the axe will let go from the ground
border_opacity = 0;

chain_loose_timer = 0; // a timer that tracks how long you've been in a condition for the axe to let loose
chain_loose_threshold = 42; // how long you need to be in a condition for the chain to let loose for before it actually does

chain_animation_step = 0; // frame of the chain animation that should be used
hand_x = x - (8 * spr_dir); // position of the player's hand, where the chain comes from
hand_y = y - 40;

tension = 0;
tension_max = 100;
tension_pull = 2.6;
tension_wallcling = 1.9;
tension_hanging = 3;
tension_recovery = 3;
tension_will_restore = true; // player needs to touch ground before tension will start restoring
yoink_cancel = false;

yoink_pull_speed = 3; // run speed out of axe area
yoink_accel = 4.6; // how fast player gets pulled back
yoink_dash_accel = 0.34;
yoink_speed = 0;
max_yoink_speed = 15; // max pullback speed
yoink_friction_ground = 0.43; // grounded yoink friction
yoink_friction_air = 0.41; // airborn yoink friction
yoink_jump_speed = 10; // max (negative) vertical speed whilst being yoinked
yoink_friction_timer = 0; // timer used to set friction back to normal (and such)
yoink_friction_time = 20; // time the timer gets set to. initially tested at 16
yoink_safe_zone = 30; // safe zone where the chain won't pull on you if you're grounded

unyoink_speed = 4; // the knockback speed threshold for the axe to come loose from the ground

normal_friction_ground = 0.5;
normal_friction_air = .02;

normal_gravity = .75;

cling_jump_spd = 13;
cling_hor_spd = 4;
cling_fall_spd = 4;
cling_wall = "left";

grabbed = -1; // contains id of player that gets grabbed by ustrong
grabbed_hurtbox = -1;
grabbed_mask = -1;

dspecial_type = 1;
axe_hitboxes = [
        [AT_BAIR, 3],
        [AT_DSPECIAL_2, 1],
        [AT_DSTRONG, 2],
        [AT_DTILT, 2],
        [AT_FSPECIAL, 2],
        [AT_FTILT, 2],
        [AT_JAB, 4],
        [AT_NAIR, 6],
        [AT_NSPECIAL, 1],
        [AT_UAIR, 3],
        [AT_USPECIAL, 3],
        [AT_UTILT, 6]
    ];
    
taunt_cancel = 0;
    
dash_speed_axe = 4.75;
dash_speed_noaxe = 5.375;

char_height = 68;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.1;
walk_turn_time = 8;
initial_dash_time = 12;
initial_dash_speed = 3.75;
dash_speed = dash_speed_axe;
dash_turn_time = 12;
dash_turn_accel = 1;
dash_stop_time = 7;
dash_stop_percent = normal_friction_ground; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = normal_friction_ground;
moonwalk_accel = 0.9;

jump_start_time = 5;
jump_speed = 12.5;
short_hop_speed = 10;
djump_speed = 11.5;
leave_ground_max = 4.75; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.75; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .9; //multiplier of air_accel while in pratfall
air_friction = normal_friction_air;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 12;
walljump_time = 32;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 16; //maximum fall speed without fastfalling
fast_fall = 20; //fast fall speed
gravity_speed = normal_gravity;
hitstun_grav = .6;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 26;
wave_land_time = 7;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 6;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground"); 
djump_sound = asset_get("sfx_jumpground");
air_dodge_sound = asset_get("sfx_quick_dodge");

hfx_heat_slash = hit_fx_create(sprite_get("hfx_heat_axe"), 24);
hfx_slash = hit_fx_create(sprite_get("hfx_slash"), 12);
hfx_zet_fire_big_recolor = hit_fx_create(sprite_get("hfx_zet_fire_big_recolor"), 24);
hfx_none = hit_fx_create(asset_get("empty_sprite"), 16);
part_sparkle = hit_fx_create(sprite_get("particle_sparkle"), 12);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;