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

mouse_norm_x = floor(mouse_x/o_map.BLOCK_SIZE);
mouse_norm_y = floor(mouse_y/o_map.BLOCK_SIZE);

var i = 0;

for(i=0;i<=360;i++){
  rad = i*pi/180;
  dx = cos(rad);
  dy = sin(rad);
  DoFov(dx,dy);
}

