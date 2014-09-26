mouse_norm_x = round(mouse_x/8);
mouse_norm_y = round(mouse_y/8);

ox = mouse_norm_x+0.5;
oy = mouse_norm_y+0.5;

for(i=0;i<25;i++)
  {
  plot(round(ox),round(oy));
  //catch block
  if(o_map.block[# round(ox), round(oy)]==1){
    return '';
  }
  ox += argument[0];
  oy += argument[1];
  }
