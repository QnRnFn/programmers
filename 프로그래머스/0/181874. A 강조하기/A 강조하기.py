# a -> A
# 나머지 대문자 알파벳 > 소문자 알파벳
# Astring = ''
# for i in myString
#   if i ='a': > 'A' > append
#   else i.lower  > append

def solution(myString):
    Astring = ''
    for i in myString:
        if i == 'a':
            Astring= Astring + (i.upper())
        elif i == 'A':
            Astring= Astring + (i)
        else:
            Astring= Astring + (i.lower())
    return Astring