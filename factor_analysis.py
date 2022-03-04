import numpy as np
import math
x=np.array([[3,6,5],[7,3,3],[10,9,8],[3,9,7],[10,6,5]])
print(x)
print(np.mean(x,axis=0))
print((np.std(x,axis=0)*math.sqrt(len(x)/(len(x)-1))))

x=(x-np.mean(x,axis=0))/(np.std(x,axis=0)*math.sqrt(len(x)/(len(x)-1)))
print('dependent matrix is:\n{}'.format(x))

A=x
varcov=np.dot(np.transpose(A),A)/len(x)
print(varcov)
e1=np.linalg.eig(varcov)
print('The Eigen vales are:\n{}{}{}'.format(e1[0][0],e1[0][1],e1[0][2]))
print('The eigen Vectors Are :\n')
print(e1[1])