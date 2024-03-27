set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_noaxe"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_noaxe_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 5);

// noaxe
set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 132 - 92);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, 102 - 144);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 93);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_FINAL_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

// final hitboxes are out of animation range, will get added through code if has axe
// top hitboxes
// ground
set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 10);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 105 - 92);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, 58 - 144);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 97);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 39);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FTILT, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_hit_slash2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);

// air
set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 10);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 105 - 92);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, 58 - 144);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 97);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 39);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 15);
set_hitbox_value(AT_FTILT, 3, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_FTILT, 3, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FTILT, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("sfx_hit_slash2"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);

// side hitboxes
// ground
set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 10);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 140 - 92);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, 98 - 144);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 71);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 91);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 4, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 65);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_FTILT, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FTILT, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, sound_get("sfx_hit_slash2"));

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 1);

// air
set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 10);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 140 - 92);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, 98 - 144);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 71);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 91);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 15);
set_hitbox_value(AT_FTILT, 5, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_FTILT, 5, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FTILT, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, sound_get("sfx_hit_slash2"));

set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 1);