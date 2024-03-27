//death.gml

// destroy axe when player dies
if (instance_exists(axe)){
    instance_destroy(axe);
    axe = noone;
}
heat = false;
tension = 0;
yoink_speed = 0;
yoink_friction_timer = 0;
