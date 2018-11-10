scoreboard players operation @e[tag=mem_controller] mem_page = @e[tag=mem_controller] mem_select
scoreboard players set @e[tag=mem_controller] mem_write_state 1
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
execute as @e[tag=mem_reader] at @s run scoreboard players operation @e[distance=..0,tag=memory,limit=1] mem_value = @e[tag=mem_controller,limit=1] mem_write_value
scoreboard players set @e[tag=mem_controller] mem_write_state 0
tellraw @a ["",{"text":"select mem:"},{"score":{"name":"@e[tag=mem_controller]","objective":"mem_select"}}]
tellraw @a ["",{"text":"write velue:"},{"score":{"name":"@e[tag=mem_controller]","objective":"mem_write_value"}}]
execute store result entity @e[tag=mem_reader,limit=1] Pos[0] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[0] 1
execute store result entity @e[tag=mem_reader,limit=1] Pos[2] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[2] 1