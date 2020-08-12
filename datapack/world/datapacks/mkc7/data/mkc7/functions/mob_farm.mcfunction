# Landing platform and walls
fill ~-3 ~ ~1 ~3 ~6 ~7 glass
fill ~-2 ~1 ~2 ~2 ~6 ~6 air outline
fill ~-2 ~1 ~2 ~2 ~1 ~6 glass

# Landing platform moat and trapdoors
setblock ~ ~2 ~6 water
    # Back
    fill ~-1 ~3 ~6 ~1 ~5 ~6 warped_trapdoor[facing=north,half=top,open=true] replace
    # Right
    fill ~-2 ~3 ~3 ~-2 ~5 ~6 warped_trapdoor[facing=east,half=top,open=true] replace
    # Left
    fill ~2 ~3 ~3 ~2 ~5 ~6 warped_trapdoor[facing=west,half=top,open=true] replace
    # Front
    fill ~-2 ~3 ~2 ~2 ~5 ~2 warped_trapdoor[facing=south,half=top,open=true] replace

# Moat corner wash
fill ~-4 ~1 ~2 ~4 ~1 ~2 glass
fill ~-3 ~1 ~2 ~3 ~1 ~2 water
setblock ~-2 ~2 ~2 warped_fence_gate[open=true]
setblock ~2 ~2 ~2 warped_fence_gate[open=true]

# Smiting station
fill ~-1 ~ ~1 ~1 ~1 ~3 glass
fill ~ ~1 ~1 ~ ~6 ~2 air
fill ~-2 ~1 ~2 ~2 ~1 ~2 air
fill ~-1 ~2 ~ ~1 ~6 ~ glass
setblock ~ ~1 ~ quartz_slab[type=top]
setblock ~ ~-1 ~-1 quartz_slab[type=bottom]
setblock ~ ~-1 ~ quartz_stairs[half=bottom,facing=south]

# Tower and top
fill ~-2 ~7 ~2 ~2 ~26 ~6 quartz_block
fill ~-10 ~26 ~-6 ~10 ~30 ~14 quartz_block
fill ~-10 ~31 ~-6 ~10 ~31 ~14 quartz_slab

# Hollow out top
fill ~-1 ~27 ~-5 ~1 ~28 ~13 air
fill ~-9 ~27 ~3 ~9 ~28 ~5 air
fill ~-9 ~29 ~-5 ~9 ~30 ~13 air

# Cross trapdoors
fill ~-1 ~28 ~-5 ~-1 ~28 ~13 warped_trapdoor[facing=east,half=top,open=true] replace
fill ~1 ~28 ~-5 ~1 ~28 ~13 warped_trapdoor[facing=west,half=top,open=true] replace
fill ~-9 ~28 ~3 ~9 ~28 ~3 warped_trapdoor[facing=south,half=top,open=true] replace
fill ~-9 ~28 ~5 ~9 ~28 ~5 warped_trapdoor[facing=north,half=top,open=true] replace

# Hollow out tower, including middle trapdoors and top of landing platform
fill ~-1 ~4 ~3 ~1 ~28 ~5 air

# Middle trapdoors
fill ~-1 ~26 ~3 ~-1 ~26 ~5 warped_trapdoor[facing=east,half=top,open=true] replace
fill ~1 ~26 ~3 ~1 ~26 ~5 warped_trapdoor[facing=west,half=top,open=true] replace
fill ~-1 ~26 ~3 ~1 ~26 ~3 warped_trapdoor[facing=south,half=top,open=true] replace
fill ~-1 ~26 ~5 ~1 ~26 ~5 warped_trapdoor[facing=north,half=top,open=true] replace

# Cross waters
fill ~-1 ~27 ~-5 ~1 ~27 ~-5 water
fill ~-1 ~27 ~13 ~1 ~27 ~13 water
fill ~-9 ~27 ~3 ~-9 ~27 ~5 water
fill ~9 ~27 ~3 ~9 ~27 ~5 water

# Spider extractor
fill ~-3 ~31 ~1 ~3 ~34 ~7 quartz_block hollow
fill ~-4 ~34 ~ ~4 ~34 ~8 quartz_slab
fill ~-4 ~33 ~ ~4 ~33 ~8 quartz_block
fill ~-3 ~33 ~1 ~3 ~33 ~7 air
setblock ~ ~33 ~7 water
fill ~-2 ~33 ~2 ~2 ~33 ~6 warped_fence_gate[open=true]
fill ~-2 ~31 ~2 ~2 ~31 ~6 red_nether_brick_wall
fill ~-1 ~31 ~3 ~1 ~33 ~5 air
fill ~ ~27 ~4 ~ ~30 ~4 red_nether_brick_wall
fill ~-3 ~33 ~2 ~3 ~33 ~2 warped_fence_gate[open=true]
fill ~-3 ~33 ~1 ~3 ~33 ~1 water
fill ~-2 ~32 ~-8 ~2 ~33 ~1 quartz_block
fill ~-2 ~34 ~-3 ~2 ~34 ~1 quartz_slab
fill ~-2 ~33 ~ ~2 ~33 ~1 air
fill ~-1 ~33 ~-8 ~1 ~33 ~1 air

# Spider exterminator
fill ~-1 ~33 ~-4 ~1 ~33 ~-4 warped_fence_gate[open=true]
fill ~-1 ~33 ~-5 ~1 ~33 ~-5 water
fill ~-1 ~33 ~-7 ~1 ~33 ~-7 warped_fence_gate[open=true]
fill ~-1 ~32 ~-7 ~1 ~32 ~-7 air
    # Roof
    fill ~-2 ~35 ~-4 ~2 ~35 ~-4 quartz_slab
    fill ~-2 ~36 ~-8 ~2 ~36 ~-5 quartz_slab
    # Ceiling
    fill ~-1 ~35 ~-7 ~1 ~35 ~-5 quartz_slab[type=top]
    # Cacti
    setblock ~-1 ~33 ~-8 sand
    setblock ~-1 ~34 ~-8 cactus
    setblock ~1 ~33 ~-8 sand
    setblock ~1 ~34 ~-8 cactus
    setblock ~-2 ~33 ~-7 sand
    setblock ~-2 ~34 ~-7 cactus
    setblock ~2 ~33 ~-7 sand
    setblock ~2 ~34 ~-7 cactus
    setblock ~-2 ~33 ~-5 sand
    setblock ~-2 ~34 ~-5 cactus
    setblock ~2 ~33 ~-5 sand
    setblock ~2 ~34 ~-5 cactus
    # Backwash
    fill ~-1 ~32 ~-10 ~1 ~33 ~-9 glass
    setblock ~ ~33 ~-9 water
    setblock ~ ~33 ~-8 air

# String funnel
fill ~-3 ~30 ~-8 ~3 ~31 ~-7 glass
fill ~-2 ~31 ~-7 ~2 ~31 ~-7 water
fill ~-1 ~31 ~-7 ~1 ~31 ~-7 air
setblock ~ ~31 ~-7 warped_fence_gate[open=true]

# String canal
fill ~-1 ~7 ~ ~1 ~25 ~1 glass
fill ~-1 ~23 ~-8 ~1 ~25 ~1 glass
fill ~-1 ~24 ~-8 ~1 ~29 ~-7 glass
fill ~ ~7 ~1 ~ ~25 ~1 air
fill ~ ~24 ~-7 ~ ~25 ~1 air
fill ~ ~25 ~-7 ~ ~30 ~-7 air
setblock ~ ~24 ~-7 water

# Better light up!
give @s torch 16
