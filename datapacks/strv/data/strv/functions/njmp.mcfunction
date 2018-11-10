# regs = {'AX':1,'BX':2,'CX':3,'DX':4,'SI':5,'DI':6,'SP':7,'BP':8,'IP':9}
say njmp called

function strv:memread
scoreboard players add @e[tag=register] IP 1
scoreboard players operation @e[tag=register] IP = @e[tag=register] Z2
