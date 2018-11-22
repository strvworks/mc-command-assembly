scoreboard players set @e[tag=mem_controller] mem_read_state 1

# ３次元座標算出
scoreboard players operation @e[tag=mem_controller] mem_page = @e[tag=mem_controller] mem_select
scoreboard players operation @e[tag=mem_controller] mem_block = @e[tag=mem_controller] mem_select
scoreboard players operation @e[tag=mem_controller] mem_layer = @e[tag=mem_controller] mem_select

scoreboard players operation @e[tag=mem_controller] mem_AX = @e[tag=mem_generator] mem_page_row
scoreboard players operation @e[tag=mem_controller] mem_AX *= @e[tag=mem_generator] mem_page_column

scoreboard players operation @e[tag=mem_controller] mem_layer /= @e[tag=mem_controller] mem_AX

scoreboard players operation @e[tag=mem_controller] mem_block %= @e[tag=mem_controller] mem_AX
scoreboard players operation @e[tag=mem_controller] mem_page %= @e[tag=mem_controller] mem_AX

scoreboard players operation @e[tag=mem_controller] mem_page %= @e[tag=mem_generator] mem_page_row
scoreboard players operation @e[tag=mem_controller] mem_block /= @e[tag=mem_generator] mem_page_row

# 書き込み位置へ移動
execute store result score @e[tag=mem_controller] mem_AX run data get entity @e[tag=mem_controller,limit=1] Pos[0] 1
scoreboard players operation @e[tag=mem_controller] mem_AX += @e[tag=mem_controller] mem_page
execute store result entity @e[tag=mem_reader,limit=1] Pos[0] double 1 run scoreboard players get @e[tag=mem_controller,limit=1] mem_AX

execute store result score @e[tag=mem_controller] mem_AX run data get entity @e[tag=mem_controller,limit=1] Pos[1] 1
scoreboard players operation @e[tag=mem_controller] mem_AX += @e[tag=mem_controller] mem_layer
execute store result entity @e[tag=mem_reader,limit=1] Pos[1] double 1 run scoreboard players get @e[tag=mem_controller,limit=1] mem_AX

execute store result score @e[tag=mem_controller] mem_AX run data get entity @e[tag=mem_controller,limit=1] Pos[2] 1
scoreboard players operation @e[tag=mem_controller] mem_AX += @e[tag=mem_controller] mem_block
execute store result entity @e[tag=mem_reader,limit=1] Pos[2] double 1 run scoreboard players get @e[tag=mem_controller,limit=1] mem_AX

# 書き込み
execute as @e[tag=mem_reader,limit=1] at @s store result score @e[tag=mem_controller,limit=1] mem_read_value run data get block ~ ~ ~ SuccessCount 1

scoreboard players set @e[tag=mem_controller] mem_read_state 0
tellraw @a ["",{"text":"select mem:"},{"score":{"name":"@e[tag=mem_controller]","objective":"mem_select"}},"  ",{"text":"read velue:"},{"score":{"name":"@e[tag=mem_controller]","objective":"mem_read_value"}}]

# 初期地点に戻る
execute store result entity @e[tag=mem_reader,limit=1] Pos[0] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[0] 1
execute store result entity @e[tag=mem_reader,limit=1] Pos[1] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[1] 1
execute store result entity @e[tag=mem_reader,limit=1] Pos[2] double 1 run data get entity @e[tag=mem_controller,limit=1] Pos[2] 1