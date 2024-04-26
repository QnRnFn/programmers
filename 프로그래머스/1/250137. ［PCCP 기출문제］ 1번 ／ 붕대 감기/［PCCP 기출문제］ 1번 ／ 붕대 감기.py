def solution(bandage, health, attacks):
    #0초일 때 설정
    t,x,y = bandage
    current_hp, heal_stack, attack_cnt = health,0, 0
    
    #1초부터 시작
    for i in range(1,(attacks[-1][0])+1):      
      #몬스터 공격 유뮤 판단 - 있을 시 데미지 계산, 회복 연속 시간 스택 제거  
      if attacks[attack_cnt][0] == i:
        current_hp = current_hp - attacks[attack_cnt][1]
        if current_hp <= 0: #피가 0 이하이면 -1 리턴
          return -1
        heal_stack = 0
        attack_cnt +=1
        print('hp =',current_hp, 'time = ',i)   
      
      
      #회복 시전 시작 - 회복 연속 시간 스택 계산
      else:
          heal_stack +=1
          if current_hp + x >= health:
            current_hp = health
          else: current_hp += x
          print('hp =',current_hp, 'time = ',i)
          #회복 연속 시간 스택 쌓일 시 추가 회복
          if heal_stack >= t:
            heal_stack = 0
            if current_hp + y >= health:
              current_hp = health
            else: current_hp += y
            print('hp =',current_hp, 'time = ',i)
          
    return current_hp