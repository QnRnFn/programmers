def solution(arr):
    answer = []
    
    cnt = 0
    for i in arr:
        if len(answer) == 0:
            answer.append(i)
            cnt +=1
        else:
            if i != arr[cnt-1]:
                answer.append(i)
            cnt +=1       
    
    
    return answer

#반복해서 arr 읽기
#arr 저장하기
#