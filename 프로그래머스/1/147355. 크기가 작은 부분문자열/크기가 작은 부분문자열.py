# len(p) 만큼 t에서 뽑아내기
# 

def solution(t, p):
    li = []
    cnt = 0
    for i in range(len(t)-len(p)+1):
        li.append(t[i:i+len(p)])
    for j in li:
        if j <= p:
            cnt +=1    
    return cnt