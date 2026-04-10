! Sphere Mesh Generator
! Author: Mylena C Silva
! Date: 2026
! Fortran + Python

      program sphere_mesh
      implicit none

      integer max_vertices, max_faces
      parameter (max_vertices=200000, max_faces=400000)

      double precision vertices(3,max_vertices)
      integer faces(3,max_faces)

      integer nv, nf
      integer refinement
      integer i

!     level of mesh 0 e 4
      refinement = 3

!     creat basic icosahedron
      call create_icosahedron(vertices,faces,nv,nf)

!     refinement
      do i = 1, refinement
               call subdivide_mesh(vertices,faces,nv,nf,max_vertices,
     &                    max_faces)

!     projects all the vertices on the sph  ere
               call normalize_vertices(vertices,nv)
      end do


s
!     write the coordenates
      call write_mesh(vertices,faces,nv,nf)

      print *,'Vertices:',nv
      print *,'Faces   :',nf

      end
