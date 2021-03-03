	id division.
	program-id. c3.



	data division.
	WORKING-STORAGE SECTION.
	01 A.
	    02 m occurs 2 times.
		03 b occurs 3 PIC XX.
		03 c PIC XX.
	procedure division.
	s1.
		MOVE 'aa' TO b(1,  1).
		MOVE  'KK' TO b(1  2).
		move 'aa' to  b(1  3).
		move 'bb' to c(2).
		DISPLAY a.
		stop run.