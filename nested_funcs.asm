main:
	li	a1, 10
	li 	a2, 5
	jal	ra, sumSquare
	ret

sumSquare:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	
	jal	ra, mult
	add	a0, x0, a6
	add	a0, a0, a2
	
	lw	ra, 12(sp)
	lw	s0, 8(sp)
	addi	sp, sp, 16
	ret
	

mult:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
			
	mul 	s0, a1, a1
	mv	a6, s0
	
	lw	ra, 12(sp)
	lw	s0, 8(sp)
	addi	sp, sp, 16
	ret
	
	
	
	