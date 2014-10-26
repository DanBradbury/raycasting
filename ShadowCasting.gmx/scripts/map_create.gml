light = ds_grid_create(101,101);
block = ds_grid_create(101,101);
BLOCK_SIZE = 32;

generate_level();

ds_grid_clear(light,0);

/* FEELS WRONG: to have map creating the player (spawn?) */
instance_create(0,0,o_player);

