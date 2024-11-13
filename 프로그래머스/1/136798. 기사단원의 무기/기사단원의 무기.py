# 약수 개수 세기 > 개수만큼 공격력
# 약수의 개수가 공격력을 초과하는지 판단 > 제한수치 넘으면 특정한 공격력
# 공격력 모두 더해서 철 얼마나 필요한지
import math
def solution(number, limit, power):
    answer = 0
    part_num = []
    for i in range(1,number+1): # 기사 넘버 고르는 루프
        # 1부터 i까지 i를 나눴을 때 나머지가 0 나오는거 
        # 1일때
        if i == 1:
            part_num.append(1)
        else: #1보다 클 때 제곱근 까지만 계산하고 두배, 12 1 2 3 4 6 12
                # 만약 제곱근이 정수라면 +1
            cnt = 0 
            for j in range(1,math.ceil((i+1)**0.5)):                
                if j == (i**0.5):
                        cnt+=1
                elif i%j == 0:
                    cnt +=2             
            if cnt > limit:
                part_num.append(power)
            else:
                part_num.append(cnt)    
            
    return sum(part_num)