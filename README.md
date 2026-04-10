# Sphere Mesh Generator (Icosahedron Subdivision)

This project generates a high‑quality triangular mesh of a sphere by recursively subdividing an icosahedron and projecting the vertices onto the unit sphere. The resulting mesh is written to a file and can be visualized with a Python script.

## Overview

Starting from a regular icosahedron (12 vertices, 20 triangular faces), each triangular face is subdivided into 4 smaller triangles by inserting edge midpoints. After each subdivision step, all vertices are normalized (projected onto the unit sphere) to maintain a spherical shape. The refinement level can be adjusted, producing meshes with increasing resolution.

The code is written in **Fortran** for performance and simplicity. A **Python 3** script using `matplotlib` is provided for 3D visualisation.

## Requirements

### Compilation (Fortran)
- A Fortran 90 compiler (e.g., `gfortran`)

### Visualisation (Python)
- Python 3
- `numpy`
- `matplotlib`

# Compilation and Execution

All Fortran files must be compiled together. For example with gfortran:

``` bash
gfortran -o sphere_mesh main.f create_icosahedron.f subdivide.f normalize_vertices.f write_mesh.f
```

or just use the Make file

``` bash
make
```

Run the executable

```bash
./sphere_mesh
```

This will produce a file named sphere.dat in the same directory.

## Visualise the mesh

```bash
python plot_mesh.py
```

A 3D plot window will open showing the spherical mesh.

<img width="458" height="371" alt="image" src="https://github.com/user-attachments/assets/c02e9f1c-bfd7-46e6-abef-bb6b3bac6921" />

