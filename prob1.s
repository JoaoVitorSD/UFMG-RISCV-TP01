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