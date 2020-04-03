	include "dog_subroutine.f"

	program esercizio1
	
	integer a, b, r
	write(6, *)"Inserisci a: "
	read(5, *)a
	write(6, *)"Inserisci b: "
	read(5, *)b
	call multiplo(a, b, r)
	end
