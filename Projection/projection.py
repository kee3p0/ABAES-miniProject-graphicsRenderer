import numpy as np
from PIL import Image as img
from numpy.lib.function_base import append
from scipy.spatial.transform import Rotation as Rx
import math


def getPixel(point, camera):
    #Camera points in world coords
    cx,cy,cz = camera
    C = np.array([  (1,0,0,-cx),
                    (0,1,0,-cy),
                    (0,0,1,-cz),
                    (0,0,0,1)])
    X,Y,Z= point
    X,Y,Z,one = Pw = np.array([X,Y,Z,1])
    ## Euler rotation matrices, anglur unit is in degree
    anx,any,anz = angle = np.array([0,0,-15])
    anx,any,anz = rad_angle = np.radians(angle)
    #Angle x-axis
    D = np.array([  (np.cos(anx),np.sin(anx),0),    
                    (-np.sin(anx),np.cos(anx),0),
                    (0,0,1)])
    #Angle z-axis
    E = np.array([  (1,0,0),
                    (0,np.cos(anz),np.sin(anz)),
                    (0,-np.sin(anz),np.cos(anz))])
    #Angle y-axis
    B = np.array([  (np.cos(any),np.sin(any),0),
                    (-np.sin(any),np.cos(any),0),
                    (0,0,1)])                
    #Combined in the rotation matrix R:
    R = np.matmul(E,D)
    R = np.matmul(B,R)
    #Make a 4x4 matrix
    R = np.append(R,[[0,0,0]],0)
    R = np.append(R,[[0],[0],[0],[1]],1)
    #Subtract camera coords from position coords
    Pwc = np.matmul(C,Pw)
    #Pc is the point in camera POV, using R as rotation and T as the position of the camera in the world
    X,Y,Z,one= Pc = np.matmul(R,Pwc) 
    #Determine the film coords
    f = 1.5; #Focal length
    F = np.eye(3,M=4)
    F[0,0] = f
    F[1,1] = f
    iden = np.identity(4)
    cp = np.matmul(F,iden*Pc)
    X = cp[0,0]
    Y = cp[1,1]
    Z = cp[2,2]
    x = X/(Z)
    y = Y/(Z)
    O_y = O_x = 126
    Sx =256/8
    Sy =256/8
    #Change film coords to pixel coords
    u = -x*Sx+O_x
    v = -y*Sy+O_y
    return  math.floor(abs(v)),math.floor(abs(u)) #Indices switched due to array indexing



def checkBound(x):
    if x >= 255:
        print("BOUND")
        return 255
    elif x <= -255:
        print("BOUND")
        return -255
    else:
        return x
            


cols = rows = 256
pixelarray = np.zeros((rows,cols,3), dtype=np.uint8)
cx,cy,cz = c_point = np.array([0,2,-2])
u,v = getPixel(np.array([0,0,0]),c_point)
u = checkBound(u)
v = checkBound(v)
pixelarray[u,v] = [0,255,0]
     
for i in range(2):
    for k in range(2):
        for l in range(2):
            u,v = getPixel(np.array([k,i,l+1]),c_point)
            u = checkBound(u)
            v = checkBound(v)
            print("u:",u," v:",v)
            pixelarray[u,v] = [255,0,0]

image = img.fromarray(pixelarray)
image.show()