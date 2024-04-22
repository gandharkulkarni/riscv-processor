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
one_s:
	addi sp, sp, -8
	sd ra, (sp)
	addi sp, sp, -8
	li t0, 3
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 4
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	mul t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	addi sp, sp, -8
	li t0, 5
	sd t0, (sp)
	ld t1, (sp)
	addi sp, sp, 8
	ld t0, (sp)
	addi sp, sp, 8
	add t0, t0, t1
	addi sp, sp, -8
	sd t0, (sp)
	ld a0, (sp)
	addi sp, sp, 8
	ld ra, (sp)
	addi sp, sp, 8
	ret
