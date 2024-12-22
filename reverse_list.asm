main:
	addi sp, sp, -64
	
	li t1, 0
	sw t1, 0(sp)
	
	li t1, 1
	sw t1, 4(sp)
	
	li t1, 2
	sw t1, 8(sp)
	
	li t1, 3
	sw t1, 12(sp)
	
	li t1, 4
	sw t1, 16(sp)
	
	li t1, 5
	sw t1, 20(sp)
	
	li t1, 6
	sw t1, 24(sp)
	
	li t1, 7
	sw t1, 28(sp)
	
	li t1, 8
	sw t1, 32(sp)
	
	li t1, 9
	sw t1, 36(sp)
	
	addi s0, sp, 36	# 0
	addi s1, sp, 0	# -40
	
	loop:
		blt s0, s1, exit
		
		lw t1, 0(s0)
		lw t2, 0(s1)
		
		sw t1, 0(s1)
		sw t2, 0(s0)
		
		addi s0, s0, -4
		addi s1, s1, 4
		
		j loop
		
	

exit:
	ret
	
 
 
 
 