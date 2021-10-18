import numpy as np
import scipy.misc as smp

####
X,Y,Z = point = np.array([1,1,11]) #Point/vector 
print("Vector location: ",point)
#Rotation of the camera in world coords. The camaera has equal rotations to the world center with 1 on each diagonal
px,py,pz = P = np.array([0,0,0]) #Position of camera in world
R = np.array([  (1,0,0,px),
                (0,1,0,py),
                (0,0,1,pz),
                (0,0,0,1)])
print("Rotation array: ",R)
####
f = 1; #Focal length
x = f*X/Z
y = f*Y/Z
print("Film coords, x:",x," y:",y)
# Transform film to pixels
# Flipped coords since pixel array starts at the top left
O_y = O_x = 126
Sx =256
Sy =256
u = round(-x*Sx/10+O_x)
v = round(-y*Sy/10+O_y)
print("Pixel coords, u:",u," y:",v)
cols = rows = 256
pixelarray = np.zeros((rows,cols), dtype=np.uint8)
pixelarray[u,v] = 1
img = smp.toimage(pixelarray)
img.show()