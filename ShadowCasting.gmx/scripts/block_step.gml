if(type==2 && o_map.light[# coord_x, coord_y]!=1){
  type = 3;
}
if(o_map.light[# coord_x, coord_y]==1){
    LIT = true;
}
if(type==0 && o_map.light[# coord_x, coord_y]!=1 && LIT){
  type = 4;
}

