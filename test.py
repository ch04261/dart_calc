total=[['9']]
tlastindex=len(total)-1
result=0
number=0
def process(number,total,tlastindex):#마지막 리스트에 넣어둔 값 계산하는 함수 process
    number="".join(map(str,total[tlastindex]))
    del total[tlastindex]
    total.append(int(number))
process(number,total,tlastindex)    
print(total)