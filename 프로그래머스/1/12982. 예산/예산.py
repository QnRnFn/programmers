#

def solution(d, budget):
    answer = 0
    sum_d = 0
    # 모든 부서 예산의 합이 예산보다 작은 경우 : 모두 지원가능
    for i in d:
        sum_d +=i        
    if sum_d <= budget:
            return len(d)
    else: # 합보다 큰경우
            # 최대로 많은 부서를 지원하는 경우
            # sort 숫자 작은 순으로 배치해놓고
            # 앞의 원소들 더하면서 합이 budget보다 최대로 작은 경우
        d = sorted(d)
        print(d)
        cnt = 0
        for j in d:
            answer +=j            
            if answer > budget:
                print(answer, cnt,0)
                return cnt            
            cnt+=1
            print(answer, cnt)
    