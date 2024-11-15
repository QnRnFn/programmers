def solution(participant, completion):
    hash_map = {}
    
    for i in participant:
        if i in hash_map:
            hash_map[i] +=1
        else:
            hash_map[i] = 1
    
    
    for i in completion:
        if i in hash_map:
            hash_map[i] -=1
    
    for i, count in hash_map.items():
        if count > 0:
            return i
        
        