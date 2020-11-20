j 0x40010c
j label
add $3, $4, $8
addi $1, $2, 0x64
mult $2, $3
mflo $1
sra $1, $2, 10
slt $1, $2, $3
label: lb $1, 100($2)
