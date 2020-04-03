	include "dog_subroutine.f"

	program esercizio4

	real x(100), s, med, p
	write(6, *)"Inserisci dimensione array: "
	read(5, *)n
	call crea_lista(x, n)
	call sommatoria(x, n, s)
	call produttoria(x, n, p)
	call media(s, n)
	
	end

c____________________________________________________________________________

c	program esercizio4
c
c	real x(100), m
c	write(6, *)"Calcola la media di n numeri. Inserisci n :"
c	read(5, *)n
c	m=0
c	do i=1, n
c		write(6, *)"Inserisci l'elemento ", i
c		read(5, *)x(i)
c		m=m+x(i)
c	enddo
c	m=m/n
c	write(6, *)m

c	end
