      subroutine subdivide_mesh(v,f,nv,nf,maxv,maxf)
      implicit none

      integer maxv,maxf,f(3,maxf),nv,nf,i,a,b,c,ab,bc,ca,nf_old
      double precision v(3,maxv)

      nf_old = nf

      do i=1,nf_old

         a = f(1,i)
         b = f(2,i)
         c = f(3,i)

! midpoint AB
         nv = nv + 1
         ab = nv
         v(:,ab) = 0.5d0*(v(:,a)+v(:,b))

! midpoint BC
         nv = nv + 1
         bc = nv
         v(:,bc) = 0.5d0*(v(:,b)+v(:,c))

! midpoint CA
         nv = nv + 1
         ca = nv
         v(:,ca) = 0.5d0*(v(:,c)+v(:,a))

! new triangles
         f(:,i) = (/a,ab,ca/)

         nf = nf + 1
         f(:,nf) = (/b,bc,ab/)

         nf = nf + 1
         f(:,nf) = (/c,ca,bc/)

         nf = nf + 1
         f(:,nf) = (/ab,bc,ca/)

      enddo

      return
      end
