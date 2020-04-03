	subroutine norma1(vettore, dim, norm)
	integer dim
	real vettore(dim), norm
	norm=0
	do i=1, dim
		norm=norm+abs(vettore(i))
	enddo
	end
		

	subroutine norma2(vettore, dim, norm)
	integer dim 
	real vettore(dim), norm
	norm=0
	do i=1, dim
		norm=norm+(abs(vettore(i)))**2
	enddo
	norm=(norm)**0.5
	end

	
	subroutine normamax(vettore, dim, norm)
	integer dim
	real vettore(dim), norm
	norm=abs(vettore(1))
	do i=1, dim
		if(abs(vettore(i)) .gt. norm)then
			norm=abs(vettore(i))
		endif
	enddo
	end
	
