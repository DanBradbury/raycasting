for(i=0;i<ds_grid_width(light)*8;i+=8)
  {
  for(j=0;j<ds_grid_height(light)*8;j+=8)
    {
    norm_x = round(i/8);
    norm_y = round(j/8);
    
    if(light[# norm_x, norm_y]==0){
      draw_set_color(c_black);
    }else if(light[# norm_x, norm_y] == 1){
      draw_set_color(c_yellow);      
    }
    
    if(mouse_x>=i && mouse_x<=i+8 && mouse_y >=j && mouse_y <=j+8){
      mouse_norm_x = round(mouse_x/8);
      mouse_norm_y = round(mouse_y/8); 
    }

    // draw blocks
    if(block[# norm_x, norm_y] == 2){
      draw_set_color(c_green);
    }else if(block[# norm_x, norm_y] == 3){
      draw_set_color(c_green);
      draw_set_alpha(0.2);
    }
    
    draw_rectangle(i,j,i+8,j+i,false);
    draw_set_alpha(1);
    }
  }
  
draw_set_color(c_red);
draw_text(5,5,"FPS: "+string(fps));

