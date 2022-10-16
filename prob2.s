.data
vetor: .word 1 2 3 4 5 6 7
.text
main:
la x12, vetor
addi x13, x0, 7
addi x13, x13, -1
slli x13, x13, 2
add x13, x13, x12
jal x1, inverte
beq x0, x0, FIM
##### START MODIFIQUE AQUI START #####
inverte: 
    addi sp, sp, 4
    sw x1, 0(sp)
    blt x13,x12, FINALIZA_INVERTE
# -------------------------- swap x18 and x19 -----------------------------------
    lw x18, 0(x12)
    lw x19, 0(x13)
    sw x18, 0(x13)
    sw x19, 0(x12)
#===============================================
    addi x12,x12,4
    addi x13,x13,-4
    jal x1, inverte
FINALIZA_INVERTE:
    lw x1, 0(sp)
    addi sp, sp, -4
    jalr x0, 0(x1)
##### END MODIFIQUE AQUI END #####
FIM: add x1, x0, x10
