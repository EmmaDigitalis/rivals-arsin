set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// charging
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

// startup lag
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// jump
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

// float
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

// fall back down
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_land_med"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 11);
// if you hit the sweet spot in window 2, attack_update will skip this to window 7

// normal endlag
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
// the attack ends here, code in attack_update

// normal endlag
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

// throw windup
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 8, AG_WINDOW_SFX_FRAME, 13);

// throw
set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 15);

// throw recover
set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 16);
// no whifflag, because window can never whiff

set_num_hitboxes(AT_USTRONG, 3);

// pin
set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 92 - 92);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 18 - 144);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 16);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 14);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

// sourspot
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 90 - 92);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 54 - 144);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 62);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 82);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

// swing hitbox
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 9);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 110 - 92);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 90 - 144);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 63);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 73);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 28);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 0.8);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);