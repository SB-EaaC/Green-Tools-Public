	identification division.
	program-id.  exam1.
	environment division.
	data division.
	working-storage section.
	77 a pic s9(3)v9 value -124.5.
	77 b pic +9(3).9.
	procedure division.
	s. 	
		move a to b.
		display 'a=', a.
		display 'b=', b.
		
	S99.
	     stop run.