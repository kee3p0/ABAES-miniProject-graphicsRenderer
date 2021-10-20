import numpy as np
from PIL import Image as img
from numpy.lib.function_base import append
from scipy.spatial.transform import Rotation as Rx
import math

def getPixel(point, camera):
    anx,any,anz = angle = np.array([0,15,0]) #Degrees
    rad_angle = np.radians(angle)
    theta = 0
    #Rotation of the camera in world coords. The camaera has equal rotations to the world center with 1 on each diagonal
    cx,cy,cz = camera
    X,Y,Z= point
    X,Y,Z,one = Pw = np.array([X,Y,Z,1])
    # px,py,pz = P = np.array([0,0,0]) #Position of camera in world
    D = np.array([  (np.cos(anx),np.sin(anx),0),
                    (-np.sin(anx),np.cos(anx),0),
                    (0,0,1)])
    E = np.array([  (1,0,0),
                    (0,np.cos(anz),np.sin(anz)),
                    (0,-np.sin(anz),np.cos(anz))])
    B = np.array([  (np.cos(any),np.sin(any),0),
                    (-np.sin(any),np.cos(any),0),
                    (0,0,1)])                
    C = np.array([  (1,0,0,-cx),
                    (0,1,0,-cy),
                    (0,0,1,-cz),
                    (0,0,0,1)])
    R = np.matmul(B,E,D)
    R = np.append(R,[[0,0,0]],0)
    R = np.append(R,[[0],[0],[0],[1]],1)
    # R = np.array([  (,-np.sin(theta),0,0),
    #                 (np.sin(theta),np.cos(theta),0,0),
    #                 (0,0,1,0),
    #                 (0,0,0,1)])
    # T = np.matmul(-R,C)
    Pwc = np.matmul(C,Pw)
    X,Y,Z,one= Pc = np.matmul(R,Pwc) #Calculate point in camera POV, using R as rotation and T as the position of the camera in the world
    ###
    # Calculate the position of x,y in the camera field
    ###
    f = 2; #Focal length
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
    O_y = O_x = 126
    Sx =256/8
    Sy =256/8
    u = -x*Sx+O_x
    v = -y*Sy+O_y
    return  math.floor(abs(v)),math.floor(abs(u)) #Indices switched due to array indexing



def checkBound(x):
    if x >= 255:
        return 255
    elif x <= -255:
        return -255
    else:
        return x
            


cols = rows = 256
pixelarray = np.zeros((rows,cols,3), dtype=np.uint8)
cx,cy,cz = c_point = np.array([0,2,-2])
     
for i in range(2):
    for k in range(2):
        for l in range(2):
            u,v = getPixel(np.array([k,i,l+2]),c_point)
            u = checkBound(u)
            v = checkBound(v)
            print("u:",u," v:",v)
            pixelarray[u,v] = [255,0,0]

image = img.fromarray(pixelarray)
image.show()