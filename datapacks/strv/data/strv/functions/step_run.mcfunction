function strv:memread
scoreboard players add @e[tag=register] IP 1

# execute if score @e[tag=register,limit=1] AX matches 0 run scoreboard players add @e[tag=register,limit=1] IP 1
execute if score @e[tag=register,limit=1] Z2 matches 1 run function strv:mov
# execute if score @e[tag=register,limit=1] AX matches 2 run function strv:jmp 
# execute if score @e[tag=register,limit=1] AX matches 3 run function strv:cmp
execute if score @e[tag=register,limit=1] Z2 matches 4 run function strv:add
execute if score @e[tag=register,limit=1] Z2 matches 5 run function strv:sub
# execute if score @e[tag=register,limit=1] AX matches 6 run function strv:mul
# execute if score @e[tag=register,limit=1] AX matches 7 run function strv:div
execute if score @e[tag=register,limit=1] Z2 matches 8 run function strv:nmov

execute if score @e[tag=register,limit=1] Z2 matches 9 run function strv:njmp
# execute if score @e[tag=register,limit=1] AX matches 3 run function strv:ncmp
execute if score @e[tag=register,limit=1] Z2 matches 11 run function strv:nadd
execute if score @e[tag=register,limit=1] Z2 matches 12 run function strv:nsub
# execute if score @e[tag=register,limit=1] AX matches 6 run function strv:nmul
# execute if score @e[tag=register,limit=1] AX matches 7 run function strv:ndiv