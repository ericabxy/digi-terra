print('This file will be run at load time!')

core.register_node('mymod:dirt', {
	description = 'Dirt',
	tiles = {'dirt.png'},
	groups = {crumbly = 3, soil = 1}
})

core.register_node("mymod:dirt_with_grass", {
	description = "Dirt with Grass",
	-- Using overlays here has no real merit here but we do it anyway so
	-- overlay-related bugs become more apparent in devtest.
	tiles = {"dirt_grass.png"},
	groups = {crumbly = 3, soil = 1},
})

core.register_node('mymod:sand', {
	description = 'Sand',
	tiles = {'sand.png'},
	groups = {crumbly = 3}
})

core.register_node('mymod:stone', {
	description = 'Stone',
	tiles = {'default_stone.png'},
	groups = {cracky = 3}
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

core.register_node("mymod:water_source", {
	description = "Water Source".."\n"..
		"Swimmable, spreading, renewable liquid".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = {"default_water.png".."^[opacity:" .. 160},
	special_tiles = {
		{name = "default_water.png".."^[opacity:" .. 160, backface_culling = false},
		{name = "default_water.png".."^[opacity:" .. 160, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mymod:water_flowing",
	liquid_alternative_source = "mymod:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	post_effect_color_shaded = true,
	groups = {water = 3, liquid = 3},
})

core.register_node("mymod:water_flowing", {
	description = "Flowing Water".."\n"..
		"Swimmable, spreading, renewable liquid".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_water_flowing_animated.png"},
	special_tiles = {
		{name = "default_water_flowing_animated.png".."^[opacity:" .. 160,
			backface_culling = false},
		{name = "default_water_flowing_animated.png".."^[opacity:" .. 160,
			backface_culling = false},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mymod:water_flowing",
	liquid_alternative_source = "mymod:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	post_effect_color_shaded = true,
	groups = {water = 3, liquid = 3},
})

-- ESSENTIAL node aliases
-- Basic nodes
core.register_alias("mapgen_stone", "mymod:stone")
core.register_alias("mapgen_water_source", "mymod:water_source")
core.register_alias("mapgen_river_water_source", "mymod:water")

-- Additional essential aliases for v6
core.register_alias("mapgen_dirt", "mymod:dirt")
core.register_alias("mapgen_dirt_with_grass", "mymod:dirt_with_grass")
core.register_alias("mapgen_sand", "mymod:sand")
