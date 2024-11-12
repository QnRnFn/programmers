# ord chr
# s의 각 원소를 유니코드 n만큼 증가시킨 것을 출력
# z를 넘어가는 경우 a로
# 대소문자 

def solution(s, n):
    answer = ''
    for i in s:  
        if i ==' ':
            answer += ' '
        elif i.isupper():
            answer += chr((ord(i)-ord('A')+n)%26 + ord('A'))
        elif i.islower():
            answer += chr((ord(i)-ord('a')+n)%26 + ord('a'))  
        
    return answer