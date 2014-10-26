light = ds_grid_create(101,101);
block = ds_grid_create(101,101);
BLOCK_SIZE = 32;

PLAYER_LOC = Coord(floor((room_width/2)/o_map.BLOCK_SIZE),floor((room_height/2)/o_map.BLOCK_SIZE));

generate_level();

ds_grid_clear(light,0);

