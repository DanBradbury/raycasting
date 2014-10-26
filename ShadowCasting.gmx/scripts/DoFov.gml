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
  plot(floor(ox),floor(oy));

  //catch block
  if(o_map.block[# floor(ox), floor(oy)].type==1 || o_map.block[# floor(ox), floor(oy)].type==3){
    o_map.block[# floor(ox), floor(oy)].type=2; 
  }
  if(o_map.block[# floor(ox), floor(oy)].type==2){
    return 'block';
  }

  ox += argument[0];
  oy += argument[1];
  }
return 'complete';
