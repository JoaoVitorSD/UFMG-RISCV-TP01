.data
vetor: .word 1 2 3 4 5 6 7
.text
main:
la x12, vetor
addi x13, x0, 7
addi x13, x13, -1
slli x13, x13, 2
jal x1, inverte
inverte:
add x15, x12,x13
lw x17, 0(x15)
add x16, x12, x19
lw x18, 0(x16)
sw x17, 0(x16)
sw x18, 0(x15)
addi x13, x13, -4
addi x19, x19,4
beq x13,x19 FIM
jalr x0, 0(x1)
# ##### END MODIFIQUE AQUI END #####
FIM: 
la x12, vetor
loop:
lw x11, 0(x12)
lw x11, 4(x12)
lw x11, 8(x12)
lw x11, 12(x12)
lw x11, 16(x12)
lw x11, 20(x12)
lw x11, 24(x12)
add x1, x0, x10