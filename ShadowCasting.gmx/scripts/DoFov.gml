mouse_norm_x = floor(mouse_x/o_map.BLOCK_SIZE);
mouse_norm_y = floor(mouse_y/o_map.BLOCK_SIZE);

ox = mouse_norm_x+0.5;
oy = mouse_norm_y+0.5;

for(i=0;i<25;i++)
  {
  plot(floor(ox),floor(oy));

  //catch block
  if(o_map.block[# floor(ox), floor(oy)]==1){
    o_map.block[# floor(ox), floor(oy)]=2; 
  }
  if(o_map.block[# floor(ox), floor(oy)]==2){
    return 'block';
  }

  ox += argument[0];
  oy += argument[1];
  }
return 'complete';
