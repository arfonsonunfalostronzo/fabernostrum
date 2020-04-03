	include "dog_subroutine.f"
	
	program esercizio8
	
	real x(100), scelta
	write(6, *)"Inserisci dim array (da 1 a 100) "
	read(5, *)n
	call crea_lista(x, n)
10	write(6, *)"Per ord crescente 1, per decrescente 2: "
	read(5, *)scelta
	if (scelta .eq. 1)then
		call ord_cre(x, n)
	elseif(scelta .eq. 2)then
		call ord_dec(x, n)
	else
		write(6, *)"La scelta inserita non è valida!"	
		goto 10
	endif
	do i=1, n
		write(6, *)x(i)
	enddo

	end
