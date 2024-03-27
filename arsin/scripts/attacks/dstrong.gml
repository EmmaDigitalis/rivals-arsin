set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_noaxe"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_noaxe_hurt"));

// charging
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

// jumps in air
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// swings down
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// recover
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 3);


// noaxe 1
set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 128 - 92);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 119 - 144);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 47);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

// axe throw
set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_DSTRONG, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("sfx_hit_slash2"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);

// axe meteor
set_hitbox_value(AT_DSTRONG, 3,  HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3,  HG_WINDOW, 10);
set_hitbox_value(AT_DSTRONG, 3,  HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3,  HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3,  HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 3,  HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 3,  HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3,  HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 3,  HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 3,  HG_ANGLE, 285);
set_hitbox_value(AT_DSTRONG, 3,  HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3,  HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3,  HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 3, HG_DRIFT_MULTIPLIER, 1.3); //ensure that you can tech the meteor so it doesn't ruin every recovery ever
set_hitbox_value(AT_DSTRONG, 3,  HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 3,  HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 3,  HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, hfx_none);
set_hitbox_value(AT_DSTRONG, 3,  HG_HIT_SFX, sound_get("sfx_hit_slash3"));
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, 3,  HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3,  HG_HITBOX_GROUP, 2);