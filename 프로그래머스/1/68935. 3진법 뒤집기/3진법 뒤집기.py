# n을 3진법으로 만들기
# 45일 때
# 0%3^0 몫 0 나머지 0
# 0%3^1 몫 0 나머지 0
# 18%3^2 몫 2 나머지 0
# n%3^3 몫 1 나머지 18
# n이 3의 몇승보다 작은지 알아보기

# 45//3 몫 15 나머지 0
# 15//3 몫 5 나머지 0
# 5//3 몫 1 나머지 2
# 1//3 몫 0 나머지 1

def solution(n):
    lists = []
    while n:
        lists.append(n%3)
        n =n // 3
    
    lists = lists[::-1]   
    cnt = 0
    aa= 0
    for i in lists: # 1200
        aa += i*(3**cnt)
        cnt+=1
        
    return aa
        
        