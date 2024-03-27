set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_noaxe"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_noaxe"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_noaxe_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// jumps up
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.625);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
// can't find an sfx that fits

// apply horizontal movement after a few frames to give space to b-reverse
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// swings down
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// recover
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// stuck in wall
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sound_get("dstrong"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_USPECIAL, 6);

// noaxe
// 1
set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 76 - 92);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 82 - 144);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 81);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 120 - 92);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 108 - 144);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 39);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 69);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);


// axe
// 1
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 93 - 92);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 65 - 144);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 102);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("sfx_hit_slash2"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

// 2
set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 144 - 92);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 94 - 144);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 43);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 67);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("sfx_hit_slash2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

// 3 (meteor sweetspot)
set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 144 - 92);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, 129 - 144);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 27);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 22);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 290);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);

// 4 (wall checker)
set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 156 - 92);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, 116 - 144);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 6,  HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 2);