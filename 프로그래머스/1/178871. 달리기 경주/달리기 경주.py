# callings 에서 이름이 불릴 때 앞 주자와 자리바꾸기
# for문으로 callings만큼 주자위치바꾸는거 반복

def solution(players, callings):
    player_rank = {player : i for i, player in enumerate(players)}
    for call in callings:
        current_rank = player_rank[call]
        
        previous_player = players[current_rank-1]
        current_player = players[current_rank]

        players[current_rank-1], players[current_rank] = current_player, previous_player

        player_rank[current_player] -= 1
        player_rank[previous_player] += 1
        
    return players