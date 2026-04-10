import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

data = open("sphere.dat").read().split()

nv = int(data[0])
nt = int(data[1])

ptr = 2

v = []
for i in range(nv):
    x = float(data[ptr]); y = float(data[ptr+1]); z = float(data[ptr+2])
    v.append([x,y,z])
    ptr += 3

v = np.array(v)

tri = []
for i in range(nt):
    a = int(data[ptr]); b = int(data[ptr+1]); c = int(data[ptr+2])
    tri.append([a-1,b-1,c-1])
    ptr += 3

tri = np.array(tri)

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

ax.plot_trisurf(v[:,0],v[:,1],v[:,2],triangles=tri)

plt.show()
