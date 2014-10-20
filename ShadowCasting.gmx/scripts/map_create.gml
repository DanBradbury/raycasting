light = ds_grid_create(101,101);
block = ds_grid_create(101,101);

ds_grid_clear(block,0);

for(i=0;i<200;i++)
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
ds_grid_clear(light,0);
