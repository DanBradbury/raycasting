with(o_map){
  //ds_grid_clear(block,instance_create(0,0,o_block));
  for(i=0;i<map_width;i++){
    for(j=0;j<map_height;j++){
        temp = instance_create(0,0,o_block);
        temp.coord_x = i;
        temp.coord_y = j;
        block[# i, j] = temp;
    }
  }

  //create perimeter
  create_premiter();

  var dx;
  var dy;
  for(i=0;i<9;i++)
    {
    dx = irandom_range(0,map_width);
    dy = irandom_range(0,map_height);
    block[# dx, dy].type=1;
    block[# dx+1, dy].type=1;
    block[# dx-1, dy].type=1;
    block[# dx, dy-1].type=1;
    block[# dx+1, dy-1].type=1;
    block[# dx-1, dy-1].type=1;
    block[# dx, dy+1].type=1;
    block[# dx+1, dy+1].type=1;
    block[# dx-1, dy+1].type=1;
    }
}

