set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// start, spin
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 0);

// begin falling, has sweetspot
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 14);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0);

// continues falling indefinitely
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 0);

// pins into the ground, has sourspots on each side
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED, 0);

// shakes in ground
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED, 0);

// unstuck
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED, 0);

// end
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DAIR, 6);

// fall init 
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 84 - 92);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 113 - 144);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 285);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, HFX_GEN_SWEET);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

// fall cont
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 58);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 83 - 92);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 112 - 144);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 52);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 78);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 300);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

// pin ground
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 85 - 92);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 128 - 144);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 44);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 33);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);

// pin sour spots
set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 67 - 92);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 139 - 144);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 27);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 27);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 101 - 92);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 139 - 144);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 2);

// unstuck
set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 102 - 92);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, 93 - 144);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 86);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 86);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 16);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 41);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 3);