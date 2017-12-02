# input = "5\t1\t9\t5\n7\t5\t3\n2\t4\t6\t8"
input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip

lines = input.split("\n").map{ |l| l.split("\t").map { |x| x.to_i }.minmax }

sum = lines.map { |rows| rows[1] - rows[0] }.reduce(0, :+)

p sum
