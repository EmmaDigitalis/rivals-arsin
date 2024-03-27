set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_noaxe"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_noaxe_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 10);

// noaxe
// 1
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 128 - 92);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, 115 - 144);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 0.8);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 118 - 92);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, 78 - 144);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

// 3
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 91 - 92);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, 65 - 144);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);

// 4
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 62 - 92);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, 81 - 144);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);

// 5
set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 50 - 92);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, 111 - 144);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);

// axe
// 1
set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 124 - 92);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, 106 - 144);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 68);
set_hitbox_value(AT_UTILT, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 6, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 6, HG_DRIFT_MULTIPLIER, 0.7);
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_UTILT, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, sound_get("sfx_hit_slash3"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_UTILT, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 117 - 92);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, 72 - 144);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);

// 3
set_hitbox_value(AT_UTILT, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, 88 - 92);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, 61 - 144);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, 1);

// 4
set_hitbox_value(AT_UTILT, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, 58 - 92);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, 69 - 144);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_GROUP, 1);

// 5 (downback)
set_hitbox_value(AT_UTILT, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 30 - 92);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, 103 - 144);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 82);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 82);
set_hitbox_value(AT_UTILT, 10, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 10, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 135);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP, 1);

// flying
// when not holding axe, axe will fly overhead in an arc to the other side of the stage
// set_hitbox_value(AT_UTILT, 12, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_UTILT, 12, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_UTILT, 12, HG_LIFETIME, 2);
// set_hitbox_value(AT_UTILT, 12, HG_WIDTH, 60);
// set_hitbox_value(AT_UTILT, 12, HG_HEIGHT, 60);
// set_hitbox_value(AT_UTILT, 12, HG_SHAPE, 0);
// set_hitbox_value(AT_UTILT, 12, HG_PRIORITY, 5);
// set_hitbox_value(AT_UTILT, 12, HG_DAMAGE, 8);
// set_hitbox_value(AT_UTILT, 12, HG_ANGLE, 40);
// set_hitbox_value(AT_UTILT, 12, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(AT_UTILT, 12, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_UTILT, 12, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_UTILT, 12, HG_FINAL_BASE_KNOCKBACK, 0);
// set_hitbox_value(AT_UTILT, 12, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_UTILT, 12, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_WALL_BEHAVIOR, 0);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_UNBASHABLE, true);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_PARRY_STUN, true);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_DOES_NOT_REFLECT, true);
// set_hitbox_value(AT_UTILT, 12, HG_PROJECTILE_IS_TRANSCENDENT, true);
// set_hitbox_value(AT_UTILT, 12, HG_HITBOX_GROUP, 2)