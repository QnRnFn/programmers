def solution(n, m):
    answer = []
    #최대공약수
    if max(m,n) % min(m,n) == 0: #한 값이 다른 값의 배수라면 작은 값이 최대공약수
        answer.append(min(m,n))
        answer.append(max(m,n))
    else: # 아니라면
        for i in range(1,min(m,n)+1):
            if (m%i ==0) and (n%i == 0):
                gcd=i
        answer.append(gcd)
        answer.append(m*n/gcd)
    return answer
        