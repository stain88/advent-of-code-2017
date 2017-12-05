import os

with open(os.path.join(os.path.dirname(__file__), 'input.txt'), 'r') as inputfile:
    data = inputfile.read().replace("\n","")

def captcha_next(captcha):
    nums  = list(map(int, captcha))
    nl = len(nums)
    total = 0
    for index, num in enumerate(nums):
        if nums[(index + 1) % nl] == num:
            total += num
    return total

def captcha_half(captcha):
    nums  = list(map(int, captcha))
    nl = len(nums)
    total = 0
    for index, num in enumerate(nums):
        if nums[int((index + nl / 2) % nl)] == num:
            total += num
    return total

print(f'Part 1 answer is {captcha_next(data)}')
print(f'Part 2 answer is {captcha_half(data)}')
