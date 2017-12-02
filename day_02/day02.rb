# input = "5\t1\t9\t5\n7\t5\t3\n2\t4\t6\t8"
# input = "5\t9\t2\t8\n9\t4\t7\t3\n3\t8\t6\t5"
input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip

lines = input.split("\n").map{ |l| l.split("\t").map { |x| x.to_i } }

part1 = lines.map { |l| l.minmax }
sum1 = part1.map { |rows| rows[1] - rows[0] }.reduce(0, :+)

part2 = lines.map do |l|
  kept = []
  l.each do |x|
    kept << x if l.any? { |i| i != x && (i % x == 0 || x % i == 0) }
  end
  kept.sort
end

sum2 = part2.map { |rows| rows[1] / rows[0] }.reduce(0, :+)

p "Part 1 sum is #{sum1}"
p "Part 2 sum is #{sum2}"
