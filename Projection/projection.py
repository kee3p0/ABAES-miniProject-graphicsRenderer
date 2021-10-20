import numpy as np
from PIL import Image as img
from scipy.spatial.transform import Rotation as Rx


def getPixel(point, camera):
    theta  = 45/360*2*np.pi
    #Rotation of the camera in world coords. The camaera has equal rotations to the world center with 1 on each diagonal
    cx,cy,cz = camera
    X,Y,Z= point
    X,Y,Z,one = Pw = np.array([X,Y,Z,1])
    px,py,pz = P = np.array([0,0,0]) #Position of camera in world
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
    T = np.matmul(-R,C)
    X,Y,Z,one= Pc = np.matmul(R,Pw)+T #Calculate point in camera POV, using R as rotation and T as the position of the camera in the world
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
    x = f*X/(f+Z)
    y = f*Y/(f+Z)
    O_y = O_x = 126
    Sx =256
    Sy =256
    u = round(-x*Sx/10+O_x)
    v = round(-y*Sy/10+O_y)
    return  u,v



cx,cy,cz = c_point = np.array([1,1,1])
cu,cv,cw,c1 = c = np.array([(1,0,0,-cx),
                            (0,1,0,-cy),
                            (0,0,1,-cz),
                            (0,0,0,1)])
cols = rows = 256
pixelarray = np.zeros((rows,cols,3), dtype=np.uint8)

u,v = getPixel(np.array([1,0,6]),c_point)
print(u,",",v)
u1,v1 = getPixel(np.array([0,0,6]),c_point)


# if u==u1: 
#     for i in range(abs(v-v1)):
#         pixelarray[u,i+v] = [0,255,0]
# elif v==v1:
#     for i in range(abs(u-u1)):
#         pixelarray[i+u,v] = [0,255,0]

pixelarray[u1,v1] = [255,0,0]
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([1,1,6]),c_point)
pixelarray[u,v] = [255,0,0]
u,v = getPixel(np.array([0,1,6]),c_point)
pixelarray[u,v] = [255,0,0]
# u,v = getPixel(np.array([1,1,7]),c_point)
# pixelarray[u,v] = [255,0,0]

image = img.fromarray(pixelarray)
image.show()