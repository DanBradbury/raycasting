/* TYPES
 * 0 - unlit dirt floor
 * 1 - not used
 * 2 - light shining on wall
 * 3 - light off wall but remembered
 * 4 - remembered dirt
 */

if(type==2 && o_map.light[# coord_x, coord_y]!=1){
  type = 3;
}
if(o_map.light[# coord_x, coord_y]==1){
    LIT = true;
}
if(type==0 && o_map.light[# coord_x, coord_y]!=1 && LIT){
  type = 4;
}

