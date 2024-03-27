set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_noaxe"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_noaxe_hurt"));

//start
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 7);

//attack 1
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//midpoint
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 2);

//attack 2
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//end
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

// 1
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 30 - 92);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, 86 - 144);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 60 - 92);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, 95 - 144);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 74);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 83);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);

// 2 (axe)
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 10);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, 26 - 92);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, 104 - 144);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 89);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 148);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.93);
set_hitbox_value(AT_BAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("sfx_hit_slash3"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);