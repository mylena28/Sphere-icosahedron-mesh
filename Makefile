FC = gfortran
FFLAGS = -O2

OBJ = main.o create_icosahedron.o subdivide.o normalize_vertices.o write_mesh.o

sphere_mesh: $(OBJ)
	$(FC) $(OBJ) -o sphere_mesh

%.o: %.f
	$(FC) $(FFLAGS) -c $<

clean:
	rm -f *.o sphere_mesh *.dat
