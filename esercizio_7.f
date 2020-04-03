	include "dog_subroutine.f"

	program esercizio5
	
	real x(100), massimo, minimo
	write(6, *)"Inserisci dimensione array (fino a 100): "
	read(5, *)n
	do i=1, n
		write(6, *)"Inserisci elemento: "
		read(5, *)x(i)
	enddo

	write(6, *)"Il massimo è: ", massimo(x, n)

	write(6, *)"Il minimo è: ", minimo(x, n)
	
	end


