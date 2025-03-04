set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_noaxe"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_noaxe_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 15);


// noaxe
// 1
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 87 - 92);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, 47 - 144);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, HFX_GEN_SPIN);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 127 - 92);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, 62 - 144);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

// 3
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 133 - 92);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, 103 - 144);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);

// 4
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 101 - 92);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, 132 - 144);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

// 5
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 57 - 92);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, 136 - 144);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 55);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 210);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, HFX_GEN_SPIN);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);

// axe
// 1
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 34 - 92);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, 95 - 144);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.42);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("sfx_hit_slash3"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 46 - 92);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, 53 - 144);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 1);

// 3
set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 91 - 92);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, 42 - 144);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 1);

// 4
set_hitbox_value(AT_NAIR, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 125 - 92);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, 56 - 144);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 1);

// 5
set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 7);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, 142 - 92);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, 95 - 144);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 1);

// 6
set_hitbox_value(AT_NAIR, 11, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, 122 - 92);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, 131 - 144);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, 1);
// 7
set_hitbox_value(AT_NAIR, 12, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, 96 - 92);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, 146 - 144);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_GROUP, 1);

// 8
set_hitbox_value(AT_NAIR, 13, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 13, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_X, 62 - 92);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_Y, 141 - 144);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_GROUP, 1);

// 9
set_hitbox_value(AT_NAIR, 14, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 14, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_X, 36 - 92);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_Y, 113 - 144);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_GROUP, 1);

// 10
set_hitbox_value(AT_NAIR, 15, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 15, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_X, 40 - 92);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_Y, 74 - 144);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_GROUP, 1);