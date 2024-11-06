# 음식의 경우 food[i] //2 를 음식의 종류만큼 붙이면 a가 먹어야하는 음식
# 0번 물 a,b선수 중간에 들어가야하므로 a선수가 먹는 음식을 다 작성하고 난 뒤에 붙여주기
# a가 먹을 음식의 역순을 붙여주면 b가 먹을 음식이 나올 것 같다.
# answer[-1:0:-1]
# int으로 이루어진 리스트를 조인하는 방법을 알아야할듯

def solution(food):
    answer = []
    cnt = 0
    # a가 먹을 음식 종류와 개수 넣어주기
    for i in range(len(food)):
        if food[i] > 1:
            for j in range(food[i]//2):
                answer.append(cnt)
        cnt +=1         
    re_answer = (answer[::-1])
    
    answer.append(0)
    answer+=re_answer
    print(answer)
    return ''.join(str(x) for x in answer)