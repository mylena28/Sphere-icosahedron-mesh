! Sphere Mesh Generator
! Author: Mylena C Silva
! Date: 2026
! Fortran + Python

      subroutine write_mesh(v,f,nv,nf)
      implicit none

      double precision v(3,*)
      integer f(3,*)
      integer nv,nf
      integer i

      open(10,file='sphere.dat')

      write(10,*) nv,nf

      do i=1,nv
         write(10,*) v(1,i),v(2,i),v(3,i)
      enddo

      do i=1,nf
         write(10,*) f(1,i),f(2,i),f(3,i)
      enddo

      close(10)

      return
      end
