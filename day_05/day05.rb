input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip
input = input.split("\n").map(&:to_i)
# input = [0,3,0,1,-3]

steps = 0
i = 0
while input[i]
  j = input[i]
  input[i] += 1
  i += j
  steps += 1
end

p steps
