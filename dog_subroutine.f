	subroutine resto(a, b, r)
	integer a, b, r
	r=a/b
	r=a-(r*b)
	end

	subroutine multiplo(a, b)
	integer a, b, r
	call resto(a, b, r)
	if (r .eq. 0)then 
		write(6, *)a, "è multiplo di", b
	else 
		write(6, *)a, "non è multiplo di ", b
	endif
	end

	subroutine pari(a)
	integer a, r
	call resto(a, 2, r)
	if (r .eq. 0)then
		write(6, *)a, "è pari"
	else
		write(6, *)a, "è dispari"
	endif
	end

	
c____________________________________________________________________________

c	FUNZIONI	
c____________________________________________________________________________

c	MINIMO

	real function minimo(lista, dim)
	integer dim
	real lista(dim)
	minimo=lista(1)
	do i=1, dim
		if(lista(i) .lt. minimo)then
			minimo=lista(i)
		endif
	enddo
	end

c____________________________________________________________________________

c	MASSIMO

	real function massimo(lista, dim)
	integer dim
	real lista(dim)
	massimo=lista(1)
	do i=1, dim
		if(lista(i) .gt. massimo)then
			massimo=lista(i)
		endif
	enddo
	end

c____________________________________________________________________________

c	SOMMATORIA

	subroutine sommatoria(lista, dim, s)
	integer dim
	real lista(dim), s
	s=0
	do i=1, dim
		s=s+lista(i)
	enddo
	write(6, *)"La sommatoria è: ", s
	end

c____________________________________________________________________________

c	PRODUTTORIA

	subroutine produttoria(lista, dim, p)
	integer dim
	real lista(dim), p
	p=1
	do i=1, dim
		p=p*lista(i)
	enddo
	write(6, *)"La produttoria è: ", p
	end

c______________________________________________________________________________
	
c	MEDIA
	
	subroutine media(s, dim)
	integer dim
	real s, med	
	med=(s/dim)
	write(6, *)"La media è: ", med
	end
	
c______________________________________________________________________________

c	CREA_ARRAY

	subroutine crea_lista(lista, dim)
	integer dim
	real lista(dim)
	do i=1, dim
		write(6, *)"Inserisci elemento: "
		read(5, *)lista(i)
	enddo
	end

c_______________________________________________________________________________

	subroutine ord_cre(lista, dim)
	integer dim	
	real lista(dim), tmp
	do i=1, dim
		do j=1, dim-1
			if(lista(j) .gt. lista(j+1))then
				tmp=lista(j)
				lista(j)=lista(j+1)
				lista(j+1)=tmp
			endif
		enddo
	enddo
	end

c______________________________________________________________________________

	subroutine ord_dec(lista, dim)
	integer dim	
	real lista(dim), tmp
	do i=1, dim
		do j=1, dim-1
			if(lista(j) .lt. lista(j+1))then
				tmp=lista(j)
				lista(j)=lista(j+1)
				lista(j+1)=tmp
			endif
		enddo
	enddo
	end

c________________________________________________________________________________
	
	subroutine stampa_lista(lista, dim)
	integer dim
	real lista(dim)
	do i=1, n
		write(6, *)lista(i)
	enddo
	end

c_________________________________________________________________________________

	subroutine somma_matrici(a, b, c, dim, n)
	integer dim, n, a(dim, *), b(dim, *), c(dim, *)
	do i=1, n
		do j=1, n
			c(i, j)=a(i, j)+b(i, j)
		enddo
	enddo
	end

c_____________________________________________________________________________

	subroutine moltiplica_matrici(a, b, c, dim, n)
	integer dim, n, a(dim, *), b(dim, *), c(dim, *)
	do i=1, n
		do j=1, n
			c(i, j)=a(i, j)*b(i, j)
		enddo
	enddo
	end
	

c__________________________________________________________________________________

	subroutine crea_matrice(matrice, dim, n)
	integer dim, matrice(dim, dim), n
	do i=1, n
		write(6, *)"Inserisci riga ", i
		read(5, *)(matrice(i, j), j=1, n)
	enddo
	end
	
c__________________________________________________________________________________

	subroutine stampa_matrice(matrice, dim, n)
	integer dim, matrice(dim, dim), n
	do i=1, n
		write(6, *)(matrice(i, j), j=1, n)
	enddo
	end

c___________________________________________________________________________________

	subroutine prodotto_vettori(a, b, dim)
	integer dim
	real a(dim), b(dim)
	c=0
	do i=1, dim
		c=a(i)*b(i)+c
		write(6, *)c
	enddo
	end

	
	subroutine stampa_vettore(vettore, dim)
	integer dim	
	real vettore(dim)
	do i=1, dim
		write(6, *)vettore(i)
	enddo
	end

c____________________________________________________________________________________

	subroutine matrice_hilbert(h, dim)
	integer dim
	real h(dim, dim)
	do i=1, dim
		do j=1, dim
			h(i, j)=(1.0/(i+j-1))
			write(6, *)h(i, j)
		enddo
	enddo
	end

c____________________________________________________________________________________

	subroutine matrice_henkel(h, dim)
	integer dim
	real h(dim, dim)
	do i=1, dim
		do j=1, dim
			h(i, j)=h(i-1, j+1)
			write(6, *)h(i-1, j+1)
		enddo
	enddo
	end
