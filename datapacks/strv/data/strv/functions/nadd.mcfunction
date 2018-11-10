# regs = {'AX':1,'BX':2,'CX':3,'DX':4,'SI':5,'DI':6,'SP':7,'BP':8,'IP':9}
say nmov called

function strv:memread
scoreboard players add @e[tag=register] IP 1
scoreboard players operation @e[tag=register] Z1 = @e[tag=register] Z2

function strv:memread
scoreboard players add @e[tag=register] IP 1
execute if score @e[tag=register,limit=1] Z1 matches 1 run scoreboard players operation @e[tag=register,limit=1] AX += @e[tag=register,limit=1] Z2
execute if score @e[tag=register,limit=1] Z1 matches 2 run scoreboard players operation @e[tag=register,limit=1] BX += @e[tag=register,limit=1] Z2
execute if score @e[tag=register,limit=1] Z1 matches 3 run scoreboard players operation @e[tag=register,limit=1] CX += @e[tag=register,limit=1] Z2
execute if score @e[tag=register,limit=1] Z1 matches 4 run scoreboard players operation @e[tag=register,limit=1] DX += @e[tag=register,limit=1] Z2
execute if score @e[tag=register,limit=1] Z1 matches 5 run scoreboard players operation @e[tag=register,limit=1] SI += @e[tag=register,limit=1] Z2
execute if score @e[tag=register,limit=1] Z1 matches 6 run scoreboard players operation @e[tag=register,limit=1] DI += @e[tag=register,limit=1] Z2
