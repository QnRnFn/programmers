# 기본 제공코드는 임의 수정해도 관계 없습니다. 단, 입출력 포맷 주의
# 아래 표준 입출력 예제 필요시 참고하세요.

# 표준 입력 예제
T = int(input())

for t in range(1, T+1):
    numbers = list(map(int, input().split()))
    odd_sum = sum(num for num in numbers if num % 2 != 0)
    print(f"#{t} {odd_sum}")