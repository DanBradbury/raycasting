/* keybaord control */
if(keyboard_check_pressed(vk_up)){
  o_player.PLAYER_LOC[1] -= 1;
}else if(keyboard_check_pressed(vk_down)){
  o_player.PLAYER_LOC[1] += 1;
}else if(keyboard_check_pressed(vk_right)){
  o_player.PLAYER_LOC[0] += 1;
}else if(keyboard_check_pressed(vk_left)){
  o_player.PLAYER_LOC[0] -= 1;
}

/* update player x,y for view */
x = PLAYER_LOC[0]*o_map.BLOCK_SIZE;
y = PLAYER_LOC[1]*o_map.BLOCK_SIZE;

