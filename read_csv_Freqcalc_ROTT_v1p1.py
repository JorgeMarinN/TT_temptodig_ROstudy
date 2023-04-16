#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

#data = pd.read_csv("TT_3stage_RO_v1p1.csv").values
#num_rows, num_cols = data.shape

df=pd.read_fwf('TT_3stage_RO_v1p1.txt')
df.to_csv('TT_3stage_RO_v1p1.csv', index=False)
data = pd.read_csv("TT_3stage_RO_v1p1.csv").values
num_rows, num_cols = data.shape

print(num_rows)
print(num_cols)
thres  = 0.9
#sw = [0,2,4,6,8,10,12,14,16,18,20]
sw = [0]
frq=[0,0,0,0,0,0,0,0,0,0,0]
frq=[0]
for i in sw:
	x = data[:,i]
	y = data[:,i+1]
	x=x[~pd.isnull(x)]
	y=y[~pd.isnull(y)]
	kk2=np.diff(y > thres, prepend=False)
	kk3=np.argwhere(kk2)[::2,0]
	lgt=kk3.shape
	j = int(i/2)
	frq[j]=lgt[0]/(x[kk3[-1]]-x[kk3[0]])
	print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))
	plt.plot(x,y)
plt.show()

#plt.plot([1.9,1.92,1.94,1.96,1.98,2,2.02,2.04,2.06,2.08,2.1],frq)
#plt.xlabel("Cin [pF]")
#plt.ylabel("Frequency [Hz]")
#plt.show()


#2.489e-9 - 1.466e-9
#1.9829e-8 - 1.8802e-8
