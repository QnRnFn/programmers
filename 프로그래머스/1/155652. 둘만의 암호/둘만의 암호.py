

def solution(s, skip, index):
    answer = ''
    snum = [ord(k) for k in s]    
    skipnum= [ord(t) for t in skip]   
    
    for i in snum:
        cnt = 0
        while cnt<index:            
            i+=1
            if i> ord('z'):
                i-=26
            if i in skipnum:
                continue
            print(chr(i),cnt)            
            cnt+=1
        answer += chr(i)
        
    return answer