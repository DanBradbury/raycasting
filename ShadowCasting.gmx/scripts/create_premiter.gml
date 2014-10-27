for(i=0;i<map_width;i++){
  block[# i, 0].type = 1;
  block[# i, map_height-1].type = 1;

  block[# 0, i].type = 1;
  block[# map_width-1, i].type = 1;
}
