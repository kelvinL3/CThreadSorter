import os

FList = os.listdir(os.getcwd())
FListC = FList[1:]

m = 0
for i in FListC:
	if str(os.path.splitext(i)[0]) != 'script': #str(os.path.splitext(__file__)):
		# print(m, os.path.splitext(i)[0], os.path.basename(__file__)[:-3])
		fileExtension = os.path.splitext(i)[1]
		os.rename(i,str(m)+fileExtension)
		m = m+1