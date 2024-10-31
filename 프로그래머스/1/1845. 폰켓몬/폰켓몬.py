# 가져가야하는 폰켓몬의 수 n/2 -> len(nums)//2
# 최대한 많은 종류의 폰켓몬을 가져가기 -> 중복제거를 하고 
# set(nums)
# #1 폰켓몬 종류의 수가 n/2보다 작을때 : len(set(nums))
# #2 폰켓몬 종류의 수가 n/2보다 클 때 : len(nums)//2


def solution(nums):
    if len(set(nums)) < len(nums)//2:
        return len(set(nums))
    else :
        return len(nums)//2