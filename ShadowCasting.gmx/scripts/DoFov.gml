/* CALLED BY - map_step
 * argument0 - x position to increment
 * argument1 - y position to increment
 * argument2 - normalized x position to go from
 * argument3 - normalized y position to go from
 * argument4 - ray size

 */

ox = argument[2]+0.5;
oy = argument[3]+0.5;

for(i=0;i<argument[4];i++)
  {
  fox = floor(ox);
  foy = floor(oy);

  //catch block
  if(fox>=0 && fox < o_map.map_width && foy>=0 && foy<o_map.map_height){
    plot(fox,foy);
    if(IsWall(fox, foy)){
      o_map.block[# fox, foy].type=2; 
    }
    if(o_map.block[# fox, foy].type==2){
      return 'block';
    }

    ox += argument[0];
    oy += argument[1];
  }
  }
return 'complete';
