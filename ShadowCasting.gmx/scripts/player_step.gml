/* keybaord control */
if(keyboard_check_pressed(vk_up)){
  if(!IsWall(PLAYER_LOC[0], PLAYER_LOC[1]-2)){
    o_player.PLAYER_LOC[1] -= 1;
  }
}else if(keyboard_check_pressed(vk_down)){
  if(!IsWall(PLAYER_LOC[0], PLAYER_LOC[1]+2)){
    o_player.PLAYER_LOC[1] += 1;
  }
}else if(keyboard_check_pressed(vk_right)){
  if(!IsWall(PLAYER_LOC[0]+2, PLAYER_LOC[1])){
    o_player.PLAYER_LOC[0] += 1;
  }
}else if(keyboard_check_pressed(vk_left)){
  if(!IsWall(PLAYER_LOC[0]-2, PLAYER_LOC[1])){
    o_player.PLAYER_LOC[0] -= 1;
  }
}

/* update player x,y for view */
x = PLAYER_LOC[0]*o_map.BLOCK_SIZE;
y = PLAYER_LOC[1]*o_map.BLOCK_SIZE;

