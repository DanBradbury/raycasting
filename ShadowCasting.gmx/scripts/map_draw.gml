for(i=0;i<ds_grid_width(light)*BLOCK_SIZE ;i+=BLOCK_SIZE )
  {
  for(j=0;j<ds_grid_height(light)*BLOCK_SIZE ;j+=BLOCK_SIZE )
    {
    norm_x = floor(i/BLOCK_SIZE);
    norm_y = floor(j/BLOCK_SIZE);
    
    if(light[# norm_x, norm_y]==0){
      draw_set_color(c_black);
    }else if(light[# norm_x, norm_y]==1){
      draw_set_color(c_yellow);      
    }
    
    // draw blocks
    draw_set_alpha(1);
    if(block[# norm_x, norm_y].type==2){
      draw_sprite(wall,0,i,j);
    }else if(block[# norm_x, norm_y].type==3){
      draw_sprite(wall,0,i,j);
      draw_set_alpha(0.5);
      draw_rectangle(i,j,i+BLOCK_SIZE ,j+BLOCK_SIZE,false);
    }else if(!IsWall(norm_x, norm_y) && light[# norm_x, norm_y]==1){
      draw_sprite(dirt,0,i,j);
    }else if(block[# norm_x, norm_y].type==4){
      draw_sprite(dirt,0,i,j);
      draw_set_alpha(0.5);
      draw_rectangle(i,j,i+BLOCK_SIZE ,j+BLOCK_SIZE,false);
    }else{
      draw_rectangle(i,j,i+BLOCK_SIZE ,j+BLOCK_SIZE,false);
    }
    }
  }
mouse_norm_x = o_player.PLAYER_LOC[0];
mouse_norm_y = o_player.PLAYER_LOC[1]; 
draw_sprite(player,0,mouse_norm_x*BLOCK_SIZE,mouse_norm_y*BLOCK_SIZE);
  
draw_set_color(c_red);
draw_text(view_xview[0]+5,view_yview[0]+5,"FPS: "+string(fps));

