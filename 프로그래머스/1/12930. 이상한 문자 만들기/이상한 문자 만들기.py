def solution(s):
    strr = (s.split(' '))
    
    strange = ''
    for i in strr:
        cnt = 0
        for j in i:
            if cnt % 2 == 0:
                strange += j.upper()
                cnt +=1
            else:
                strange += j.lower()
                cnt +=1        
        strange += ' '
    return strange[:-1]