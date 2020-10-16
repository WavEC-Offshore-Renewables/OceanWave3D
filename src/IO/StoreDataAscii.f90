SUBROUTINE StoreDataAscii(nx,ny,E,P,FineGrid,nr)
!
! ****************************************************************
!
!>
!! Store data in an ascii file.
!!
!!
!! By Allan P. Engsig-Karup.
!<
USE Precision
USE Constants
USE DataTypes
IMPLICIT NONE
INTEGER :: nx, ny, i, j, k, nr, i0=100, io
REAL(KIND=long), DIMENSION(nx*ny) :: E,P
TYPE (Level_def) :: FineGrid
CHARACTER(len=30) :: filename,form
io=i0+nr
WRITE(filename, FMT="(A,I5.5,A)") "data/EP_",nr,".txt"
open(unit=io, file=filename,status='unknown')

DO j=1,ny
   DO i=1,nx
      k=(j-1)*nx+i
      WRITE (io, 445) FineGrid%x(i,j), FineGrid%y(i,j), E(k), P(k)
   ENDDO
   WRITE(io,444)
ENDDO
CLOSE(io)
445 FORMAT(4e14.6)
446 FORMAT(100e14.6)
444 FORMAT()
END SUBROUTINE StoreDataAscii
