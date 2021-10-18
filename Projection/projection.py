import numpy as np
from PIL import Image as img

def getPixel(point):
    #Rotation of the camera in world coords. The camaera has equal rotations to the world center with 1 on each diagonal
    X,Y,Z= point
    X,Y,Z,one = Pw = np.array([X,Y,Z,1])
    px,py,pz = P = np.array([0,0,0]) #Position of camera in world
    R = np.array([  (0.88,-0.32,0.34,px),
                    (0.43,0.84,-0.32,py),
                    (-0.18,0.43,0.88,pz),
                    (0,0,0,1)])
    X,Y,Z,one=Pc = Pw*R
    f = 4; #Focal length
    x = f*X/(f+Z)
    y = f*Y/(f+Z)
    O_y = O_x = 126
    Sx =256
    Sy =256
    u = round(-x*Sx/10+O_x)
    v = round(-y*Sy/10+O_y)
    return u,v

cols = rows = 256
pixelarray = np.zeros((rows,cols,3), dtype=np.uint8)

u,v = getPixel(np.array([1,0,6]))
u1,v1 = getPixel(np.array([0,0,6]))


# if u==u1: 
#     for i in range(abs(v-v1)):
#         pixelarray[u,i+v] = [0,255,0]
# elif v==v1:
#     for i in range(abs(u-u1)):
#         pixelarray[i+u,v] = [0,255,0]

pixelarray[u1,v1] = [255,0,0]
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([1,1,6]))
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([0,1,6]))
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([1,1,7]))
pixelarray[u,v] = [255,0,0]

image = img.fromarray(pixelarray)
image.show()