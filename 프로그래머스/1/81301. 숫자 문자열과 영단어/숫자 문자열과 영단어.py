# 딕셔너리만들어서 숫자:0 해주기
# word를 num으로 바꾸기

def solution(s):
    word_to_num = {
        "zero": "0", "one": "1", "two": "2", "three": "3", "four": "4",
        "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"    }

    for word, num in word_to_num.items():
        s = s.replace(word, num)

    return int(s)

