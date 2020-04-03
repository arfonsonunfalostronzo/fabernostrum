	include "dog_subroutine.f"
	program esercizio10
	integer dim, n, matr1(10, 10), matr2(10, 10), matr3(10, 10)
	parameter(dim=10)
	write(6, *)"Inserisci ordine matrice "
	read(5, *)n	
	write(6, *)"Matrice 1 "
	call crea_matrice(matr1, dim, n)
	call stampa_matrice(matr1, dim, n)
	write(6, *)"Matrice 2 "
	call crea_matrice(matr2, dim, n)
	call stampa_matrice(matr2, dim, n)
	call moltiplica_matrici(matr1, matr2, matr3, dim, n)
	write(6, *)" "
	write(6, *)"La matrice prodotto è :"
	call stampa_matrice(matr3, dim, n)
	end
