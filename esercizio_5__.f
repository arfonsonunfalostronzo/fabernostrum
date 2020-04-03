	program esercizio3

	real x(100), s, p
	write(6, *)"Inserisci la dimensione dell'array (fino a 100) "
	read(5, *)n
	s=0
	p=1
	do i=1, n
		read(5, *)x(i)
		s=s+x(i)
		p=p*x(i)
	enddo
	write(6, *)"La sommatoria è uguale a ", s
	write(6, *)"La prouttoria è uguale a ", p
	
	end

c       sia nella somma che nel prodotto di numeri reali con cifre decimali diverse da 0 mi danno risultati corretti+ultime due cifre dopo la virgola strane

c 	es: 1.2+1.2+1.2=3.60000014 anziché 3.6
c	    1.2*1.2*1.2=1.72800016	   1.728
