BLOCK_SIZE = 32;

map_width = room_width/BLOCK_SIZE;
map_height = room_height/BLOCK_SIZE;

light = ds_grid_create(map_width,map_height);
block = ds_grid_create(map_width,map_height);

generate_level();

ds_grid_clear(light,0);

/* FEELS WRONG: to have map creating the player (spawn?) */
instance_create(0,0,o_player);

