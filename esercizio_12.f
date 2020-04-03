	program esercizio3
	real v1(100), v2(100)
	integer m(100, 100)
	write(6, *)"Inserisci dim vettori: "
	read(5, *)n
	write(6, *)"Inserisci componenti vettore 1"
	do i=1, n
		write(6, *)"Inserisci componente", i
		read(5, *)v1(i)
	enddo
	write(6, *)"Inserisci componenti vettore 2"
	do j=1, n
		write(6, *)"Inserisci componente", j
		read(5, *)v2(j)
	enddo
	do i=1, n
		do j=1, n
			m(i, j)=v1(i)*v2(j)
			write(6, *)m(i, j)
		enddo
	enddo
	
	end
