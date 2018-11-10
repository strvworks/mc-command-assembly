filename = './write.asm'
out_mc = ''
controller = '@e[tag=mem_controller]'

write = 0
out_mc = ''
offset = 0

regs = {'AX':1,'BX':2,'CX':3,'DX':4,'SI':5,'DI':6,'SP':7,'BP':8,'IP':9}

print('before')
with open(filename, 'r') as f:
    for i, line in enumerate(f.readlines()):
        order = line.replace('\n','').split(' ')
        print(order)
        if order[0] == 'MOV':
            write = 1
            mtype = 1
        elif order[0] == 'JMP':
            write = 2
            mtype = 2
        elif order[0] == 'CMP':
            write = 3
            mtype = 1
        elif order[0] == 'ADD':
            write = 4
            mtype = 1
        elif order[0] == 'SUB':
            write = 5
            mtype = 1
        elif order[0] == 'MUL':
            write = 6
            mtype = 1
        elif order[0] == 'DIV':
            write = 7
            mtype = 1
        elif order[0] == 'nMOV':
            write = 8
            mtype = 3
        elif order[0] == 'nJMP':
            write = 9
            mtype = 4
        elif order[0] == 'nCMP':
            write = 10
            mtype = 3
        elif order[0] == 'nADD':
            write = 11
            mtype = 3
        elif order[0] == 'nSUB':
            write = 12
            mtype = 3
        elif order[0] == 'nMUL':
            write = 13
            mtype = 3
        elif order[0] == 'nDIV':
            write = 14
            mtype = 3


        if mtype == 1:
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, write)
            offset += 1
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, regs[order[1]])
            offset += 1
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, regs[order[2]])



        elif mtype == 2:
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, write)
            offset += 1
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players operation {0} mem_write_value = {0} {2}
function strv:memwrite 
            '''.format(controller, i+offset, regs[order[1]])


        elif mtype == 3:
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, write)
            offset += 1
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, regs[order[1]])
            offset += 1
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, order[2])


        elif mtype == 4:
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, write)
            offset += 1
            out_mc += '''
scoreboard players set {0} mem_select {1}
scoreboard players set {0} mem_write_value {2}
function strv:memwrite 
            '''.format(controller, i+offset, order[1])



print('after')
print(out_mc)
