import sys
import gzip
from collections import  deque
from itertools import izip

S1=sys.argv[1]
S2=sys.argv[2]
#num=int(sys.argv[3])
#T1=S1[:-num]+".trim"
#T2=S2[:-num]+".trim"
T1,T2=S1,S2

tem1=deque(maxlen=4)
tem2=deque(maxlen=4)

# filtering criteria: ten bases are N or the average Phred score is less than 53 (99%)

trim1 = gzip.open("./trim/"+T1, 'wb')
trim2 = gzip.open("./trim/"+T2, 'wb')
NR=1
for line1,line2 in izip(gzip.open("./raw_reads/"+S1),gzip.open("./raw_reads/"+S2)):
        tem1.append(line1)
        tem2.append(line2)
        if NR%4==0:
           if (tem1[1].count("N"))<10 and (sum(map(ord, line1))/float(len(line1))>53) and (tem2[1].count("N"))<10 and (sum(map(ord, line2))/float(len(line2))>53) :
               for i in range(4):
                  trim1.write(tem1.popleft()) 
                  trim2.write(tem2.popleft()) 
        NR+=1 
trim1.close()
trim2.close()

