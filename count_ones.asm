main:
	addi a0, x0, 0x0
	addi a1, x0, 0xFFC
	addi a2, x0, 0x1
	
	
	loop:
		blt a1, a2, exit
	
		or t0, a1, a2
		
		beq t0, a1, add_one
	
		add a2, a2, a2
		
		j loop
		
	
	
	add_one:
		addi a0, a0, 1
		
		add a2, a2, a2
		
		j loop
	

exit:
	
