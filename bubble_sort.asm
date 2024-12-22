main:
	addi sp, sp, -64
	
	li t1, 0x1f4
	sw t1, 0(sp)
	
	li t1, 0xa
	sw t1, 4(sp)
	
	li t1, 0x12c
	sw t1, 8(sp)
	
	li t1, 0x64
	sw t1, 12(sp)
	
	li t1, 0xf
	sw t1, 16(sp)
	
	li t1, 0xff
	sw t1, 20(sp)
	
	li t1, 0x2d
	sw t1, 24(sp)
	
	li t1, 0xc8
	sw t1, 28(sp)
	
	li t1, 0x32
	sw t1, 32(sp)
	
	li t1, 0x3e8
	sw t1, 36(sp)
	
	addi s0, sp, 40	# 0
	addi s1, sp, 0	# -40
 
	
loop:
	bge s1, s0, exit
	
	mv s2, s1
	
	lw s3, 0(s1)
	
	
	nested_loop:
		bge s2, s0, end_loop
		
		addi s2, s2, 4
		
		lw s4, 0(s2)
		
		blt s3, s4, set_max
		
		j nested_loop
	
	set_max:
	
		add s5, x0, s3
		add s3, x0, s4
		add s4, x0, s5
		
		sw s3, 0(s1)
		sw s4, 0(s2)
		
		j nested_loop
		

end_loop:	
	addi s1, s1, 4
	
	j loop
		

exit:
	li a7, 10       
    	ecall  
