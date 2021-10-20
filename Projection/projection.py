import numpy as np
from PIL import Image as img
from scipy.spatial.transform import Rotation as Rx
import math

def getPixel(point, camera):
    thx = 0
    theta  = thx/360*2*np.pi
    #Rotation of the camera in world coords. The camaera has equal rotations to the world center with 1 on each diagonal
    cx,cy,cz = camera
    X,Y,Z= point
    X,Y,Z,one = Pw = np.array([X,Y,Z,1])
    # px,py,pz = P = np.array([0,0,0]) #Position of camera in world
    C = np.array([  (1,0,0,-cx),
                    (0,1,0,-cy),
                    (0,0,1,-cz),
                    (0,0,0,1)])
    # r = Rx.from_euler('z',[45],degrees=True)
    # R = np.zeros((4,4))
    # R = r.as_matrix()
    R = np.array([  (np.cos(theta),-np.sin(theta),0,0),
                    (np.sin(theta),np.cos(theta),0,0),
                    (0,0,1,0),
                    (0,0,0,1)])
    # T = np.matmul(-R,C)
    Pwc = np.matmul(C,Pw)
    X,Y,Z,one= Pc = np.matmul(R,Pwc) #Calculate point in camera POV, using R as rotation and T as the position of the camera in the world
    ###
    # Calculate the position of x,y in the camera field
    ###

    f = 1; #Focal length
    F = np.eye(3,M=4)
    F[0,0] = f
    F[1,1] = f
    iden = np.identity(4)
    cp = np.matmul(F,iden*Pc)
    X = cp[0,0]
    Y = cp[1,1]
    Z = cp[2,2]
    x = f*X/(Z)
    y = f*Y/(Z)
    print("x:",x," y:",y)
    O_y = O_x = 126
    Sx =256/8
    Sy =256/8
    u = -x*Sx+O_x
    v = -y*Sy+O_y
    print(u,",",v)
    return  math.floor(abs(u)),math.floor(abs(v))



cx,cy,cz = c_point = np.array([0,0,0])

cols = rows = 256
pixelarray = np.zeros((rows,cols,3), dtype=np.uint8)

u,v = getPixel(np.array([1,0,2]),c_point)

u1,v1 = getPixel(np.array([0,0,2]),c_point)
# if u==u1: 
#     for i in range(abs(v-v1)):
#         pixelarray[u,i+v] = [0,255,0]
# elif v==v1:
#     for i in range(abs(u-u1)):
#         pixelarray[i+u,v] = [0,255,0]
# pixelarray[126,126] = [0,0,255]
pixelarray[u1,v1] = [0,255,0]

pixelarray[v,u] = [255,0,0]
u,v = getPixel(np.array([1,1,2]),c_point)
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([0,1,2]),c_point)
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([1,1,3]),c_point)
pixelarray[u,v] = [255,0,0]

image = img.fromarray(pixelarray)
image.show()