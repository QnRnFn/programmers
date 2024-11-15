#participant의 원소 중 completion에 없는 것 출력
# 동명이인을 어떻게 처리할지
# 

def solution(participant, completion):
    participant.sort() # len : n개
    completion.sort() # len : n-1개
    
    for i in range(len(completion)):
        if participant[i] != completion[i]:
            return participant[i]
        # 정렬하고 p,c 비교했을때 다른 원소가 없다면
        # p의 마지막 원소가 다른 사람이라는거니까
    return participant[-1]
   