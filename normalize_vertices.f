      subroutine normalize_vertices(v,nv)
      implicit none

      double precision v(3,*)
      integer nv
      integer i
      double precision r

      do i=1,nv

         r = sqrt(v(1,i)**2 + v(2,i)**2 + v(3,i)**2)

!        protection from /0
         if (r .gt. 0.d0) then
            v(1,i)=v(1,i)/r
            v(2,i)=v(2,i)/r
            v(3,i)=v(3,i)/r
         endif

      enddo

      return
      end
