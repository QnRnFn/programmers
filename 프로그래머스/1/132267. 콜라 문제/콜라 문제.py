# n//a * b 콜라병
# 다음 n은  이전 n//a*b + n%a
# while문으로 보유중인 병 a이 n개 미만일때 까지
# 

def solution(a, b, n):
    answer = 0
    while a <= n:
        answer += n // a * b
        n = n//a*b + n%a    
    return answer