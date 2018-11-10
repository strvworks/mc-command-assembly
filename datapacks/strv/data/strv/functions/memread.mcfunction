scoreboard players operation @e[tag=mem_controller] mem_select = @e[tag=register] IP
scoreboard players operation @e[tag=mem_controller] mem_page = @e[tag=mem_controller] mem_select
scoreboard players set @e[tag=mem_controller] mem_read_state 1
scoreboard players operation @e[tag=mem_controller] mem_block = @e[tag=mem_controller] mem_select
scoreboard players set @e[tag=mem_controller] mem_AX 64
scoreboard players operation @e[tag=mem_controller] mem_page %= @e[tag=mem_controller] mem_AX
scoreboard players operation @e[tag=mem_controller] mem_block /= @e[tag=mem_controller] mem_AX
execute store result score @e[tag=mem_controller] mem_AX run data get entity @e[tag=mem_controller,limit=1] Pos[2] 1
scoreboard players operation @e[tag=mem_controller] mem_AX -= @e[tag=mem_controller] mem_block
execute store result entity @e[tag=mem_reader,limit=1] Pos[2] double 1 run scoreboard players get @e[tag=mem_controller,limit=1] mem_AX
execute store result score @e[tag=mem_controller] mem_AX run data get entity @e[tag=mem_controller,limit=1] Pos[0] 1
scoreboard players operation @e[tag=mem_controller] mem_AX += @e[tag=mem_controller] mem_page
execute store result entity @e[tag=mem_reader,limit=1] Pos[0] double 1 run scoreboard players get @e[tag=mem_controller,limit=1] mem_AX
execute as @e[tag=mem_reader] at @s run teleport ~0.5 ~ ~0.5
execute as @e[tag=mem_reader] at @s run scoreboard players operation @e[tag=mem_controller,limit=1] mem_read_value = @e[distance=..0,dz=1,tag=memory,limit=1] mem_value
scoreboard players set @e[tag=mem_controller] mem_read_state 0
# execute as @e[tag=mem_reader] at @s run summon minecraft:armor_stand ~ ~ ~
tellraw @a ["",{"text":"select mem:"},{"score":{"name":"@e[tag=mem_controller]","objective":"mem_select"}},"  ",{"text":"read velue:"},{"score":{"name":"@e[tag=mem_controller]","objective":"mem_read_value"}}]
execute store result entity @e[tag=mem_reader,limit=1] Pos[0] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[0] 1
execute store result entity @e[tag=mem_reader,limit=1] Pos[2] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[2] 1
scoreboard players operation @e[tag=register] Z2 = @e[tag=mem_controller] mem_read_value