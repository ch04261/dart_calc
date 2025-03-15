total=[[]]
tlastindex=len(total)-1
result=0
number=0
def process(number,total,tlastindex):#마지막 리스트에 넣어둔 값 계산하는 함수 process
    tlastindex=len(total)-1
    number="".join(map(str,total[tlastindex]))
    del total[tlastindex]
    total.append(int(number))

def enter(result,total,tlastindex):#최종 계산식 연산하는 함수 enter
    process(number,total,tlastindex)
    result="".join(map(str,total))
    print(eval(result))

def plus(total):#연산자 제작 함수 
        process(number,total,tlastindex)
        total.append('+')
        total.append([])
def minus(total):#연산자 제작 함수 
        process(number,total,tlastindex)
        total.append('-')
        total.append([])
def multiply(total):#연산자 제작 함수 
        process(number,total,tlastindex)
        total.append('*')
        total.append([])
def divide(total):#연산자 제작 함수 
        process(number,total,tlastindex)
        total.append('/')
        total.append([])

def one(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append(1)
def two(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('2')
def three(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('3')
def four(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('4')
def five(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('5')
def six(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('6')
def seven(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('7')
def eight(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('8')
def nine(total,tlastindex):#숫자 제작 함수
    tlastindex=len(total)-1 # tlastindex값 새로 정의
    total[tlastindex].append('9')
def zero(total,tlastindex):#숫자 제작 함수
    total[tlastindex].append('0')

nine(total,tlastindex)
zero(total,tlastindex)
plus(total)
three(total,tlastindex)
multiply(total)
nine(total,tlastindex)

enter(result,total,tlastindex)

print(total)

