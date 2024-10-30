# array가 주어지고 commands의 [i,j,k]
# for문으로 커맨드 돌리기
# array를 [i,j] 인덱싱
# 인덱싱 한 것을 sort해서 k번째를 구하면 될 것 같습니다.

def solution(array, commands):
    answer = []
    for i in commands:
        # commands[0] =2
        # commands[1] =5
        # commands[2] =3
        answer.append(sorted(array[i[0]-1:i[1]])[i[2]-1])
        
    return answer