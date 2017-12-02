input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip

chars = input.split('')

part_1 = []
part_2 = []
chars.each_with_index do |x, i|
  # Part 1
  next_p1_i = (i + 1 > chars.length - 1) ? 0 : i + 1

  # Part 2
  next_p2_i = (i + (chars.length / 2)) % chars.length
  part_1 << x if chars[next_p1_i] == x
  part_2 << x if chars[next_p2_i] == x
end

p "Part 1 answer is #{part_1.map { |i| i.to_i }.reduce(0, :+)}"
p "Part 2 answer is #{part_2.map { |i| i.to_i }.reduce(0, :+)}"
