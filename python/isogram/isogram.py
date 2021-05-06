def is_isogram(string):
    sanitized = string.lower()
    new_list = []
    for letter in sanitized:
        if letter.isalpha():
            if letter in new_list:
                return False
            new_list.append(letter)
    return True
