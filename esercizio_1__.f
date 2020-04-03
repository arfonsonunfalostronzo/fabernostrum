	include "dog_subroutine.f"

	program esercizio6
	integer fi, scelta, n
	real fr
	real*8 fr2
	write(6, *)"Inserisci n per il fattoriale: "
	read(5, *)n	
10	write(6, *)"Premi 1 per fattoriale intero"
	write(6, *)"Premi 2 per fattoriale reale"
	write(6, *)"Premi 3 per fattoriale real doppia precisione"
	read(5, *)scelta
	if(scelta .eq. 1)then
		write(6, *)"Il fattoriale è: ", fi(n)
	elseif(scelta .eq. 2)then
		write(6, *)"Il fattoriale è: ", fr(n)
	elseif(scelta .eq. 3)then
		write(6, *)"Il fattoriale è: ", fr2(n)
	else 
		write(6, *)"La scelta inserita non è valida!"
		goto 10
	endif
	end
c___________________________________________FINO A 12 FUNZIONA; DA 13 NO


	integer function fi(n)
	integer n
	fi=1
	do i=1, n
		fi=fi*i
	enddo
	end
	
	real function fr(n)
	integer n
	fr=1
	do i=1, n
		fr=fr*i
	enddo
	end

	real*8 function fr2(n)
	integer n
	fr2=1
	do i=1, n
		fr2=fr2*i
	enddo
	end
