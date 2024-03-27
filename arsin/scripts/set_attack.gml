//update
if (instance_exists(axe)){
    if (attack == AT_NSPECIAL && axe.state != 10){
        attack = AT_NSPECIAL_2;
    }
    
    if (attack == AT_DSPECIAL && axe.state != 10){
        attack = AT_DSPECIAL_2;
    }
}
