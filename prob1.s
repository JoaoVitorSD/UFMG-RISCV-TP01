.data
vetor: .word 1 2 3 4 5 6 7
.text
main:
la x12, vetor
addi x13, x0, 7
addi x13, x13, -1
slli x13, x13, 2
# x13 is the size
add x19,x0,x0
## firts position of vetor
jal x1, inverte
beq x0,x0, FIM
inverte:
add x15, x12,x13
lw x17, 0(x15)
add x16, x12, x19
lw x18, 0(x16)
// x15 is the 
sw x17, 0(x16)
sw x18, 0(x15)
addi x13, x13, -4
addi x19, x19,4
beq x13,x19 FIM
# jalr
jalr x0, 0(x1)
# ##### END MODIFIQUE AQUI END #####
FIM: 
lw x11, 0(x12)
lw x11, 4(x12)
lw x11, 8(x12)
lw x11, 12(x12)
lw x11, 16(x12)
lw x11, 20(x12)
lw x11, 24(x12)
add x1, x0, x10