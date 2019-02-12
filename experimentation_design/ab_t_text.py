import numpy as np
#import scipy.stats


y1 = 5
y2 = 8
s1 = 1
s2 = 3
n1 = 200
n2 = 500

t_test1 = (y1 - y2)/np.sqrt((s1**2/n1) + (s2**2/n2))
print(t_test1)


yb1 = 1090
yb2 = 999
sb1 = 400
sb2 = 30
nb1 = 900
nb2 = 100


t_test2 = (yb1 - yb2)/np.sqrt(sb1**2/nb1 + sb2**2/nb2)
print(t_test2)



yc1 = 45
yc2 = 40
sc1 = 45
sc2 = 40
nc1 = 2000
nc2 = 2000

t_test3 = (yc1-yc2)/np.sqrt(sc1**2/nc1 + sc2**2/nc2)
print(t_test3)
