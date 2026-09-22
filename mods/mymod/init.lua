print('This file will be run at load time!')

core.register_node('mymod:dirt', {
	description = 'Dirt',
	tiles = {'dirt.png'},
	groups = {crumbly = 3, soil = 1}
})

core.register_node('mymod:stone', {
	description = 'Stone',
	tiles = {'stone.png'},
	groups = {cracky = 1}
})

core.register_node('mymod:water', {
	description = 'Water',
	drawtype = 'liquid',
	tiles = {'water.png'},
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = 'source',
	liquid_viscosity = 1,
	groups = {water = 3, liquid = 3, cools_lava = 1}
})

core.register_craft({
	type = 'shapeless',
	output = 'mymod:node 3',
	recipe = { 'default:dirt', 'default:stone'},
})

core.register_alias("mapgen_dirt", "mymod:dirt")
core.register_alias("mapgen_stone", "mymod:stone")
core.register_alias("mapgen_water_source", "mymod:water")
core.register_alias("mapgen_river_water_source", "mymod:water")
