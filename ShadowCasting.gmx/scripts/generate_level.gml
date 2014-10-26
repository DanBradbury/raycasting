with(o_map){
  ds_grid_clear(block,0);

  var dx;
  var dy;
  for(i=0;i<89;i++)
    {
    dx = irandom_range(0,100);
    dy = irandom_range(0,100);
    block[# dx, dy] = 1;
    block[# dx+1, dy] = 1;
    block[# dx-1, dy] = 1;
    block[# dx, dy-1] = 1;
    block[# dx+1, dy-1] = 1;
    block[# dx-1, dy-1] = 1;
    block[# dx, dy+1] = 1;
    block[# dx+1, dy+1] = 1;
    block[# dx-1, dy+1] = 1;
    }
}

