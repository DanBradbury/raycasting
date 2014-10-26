ds_grid_clear(light, 0);

/* reset all blocks to 1? */
/* instead set to 3 for remembering the map */
for(i=0;i<101;i++){
  for(j=0;j<101;j++){
    if(o_map.block[# i, j]==2){
      o_map.block[# i, j]=1;
    }
  }
}

mouse_norm_x = PLAYER_LOC[0];
mouse_norm_y = PLAYER_LOC[1];

var i = 0;
for(i=0;i<=360;i++){
  rad = i*pi/180;
  dx = cos(rad);
  dy = sin(rad);
  DoFov(dx,dy,mouse_norm_x,mouse_norm_y,5);
}

/* keybaord control */
if(keyboard_check_pressed(vk_up)){
  PLAYER_LOC[1] -= 1;
}else if(keyboard_check_pressed(vk_down)){
  PLAYER_LOC[1] += 1;
}else if(keyboard_check_pressed(vk_right)){
  PLAYER_LOC[0] += 1;
}else if(keyboard_check_pressed(vk_left)){
  PLAYER_LOC[0] -= 1;
}

