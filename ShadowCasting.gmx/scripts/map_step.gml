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

mouse_norm_x = o_player.PLAYER_LOC[0];
mouse_norm_y = o_player.PLAYER_LOC[1];

var i = 0;
for(i=0;i<=360;i++){
  rad = i*pi/180;
  dx = cos(rad);
  dy = sin(rad);
  DoFov(dx,dy,mouse_norm_x,mouse_norm_y,5);
}

