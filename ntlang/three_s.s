main:

    addi sp, sp, -1024

    # Initializing reg values as 0 or input
    lbu a0, (x0)
    lbu a1, (x1)
    lbu a2, (x2)
    lbu a3, (x3)
    lbu a4, (x4)
    lbu a5, (x5)
    lbu a6, (x6)
    lbu a7, (x7)
    
    jal codegen_func_s
    
    addi sp, sp, 1024
    
    unimp
codegen_func_s:
three_s:
	addi sp, sp, -8
	sd ra, (sp)
	addi sp, sp, -8
	li t0, 2
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 1023
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 1
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	add t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 4
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	div t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	mul t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	ld t0, (sp)
	addi sp, sp, 8
	sub t0, zero, t0
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 2
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	sra t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 8
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	sll t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	ld t0, (sp)
	addi sp, sp, 8
	li t1, -1
	xor t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 10
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	srl t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 14
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	xor t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 30
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	and t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 16
	sd t0, (sp)
	ld t0, (sp)
	addi sp, sp, 8
	li t1, -1
	xor t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	or t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	ld a0, (sp)
	addi sp, sp, 8
	ld ra, (sp)
	addi sp, sp, 8
	ret
