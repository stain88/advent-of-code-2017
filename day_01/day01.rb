input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip

class Day01

  def self.captcha_next captcha
    nums = captcha.split('')
    nums.select.with_index do |x, i|
      nums[(i + 1) % nums.length] == x
    end.map(&:to_i).reduce(0, :+)
  end

  def self.captcha_half captcha
    nums = captcha.split('')
    nl = nums.length
    nums.select.with_index do |x, i|
      nums[(i + nl / 2) % nl] == x
    end.map(&:to_i).reduce(0, :+)
  end

end

p "Part 1 answer is #{Day01.captcha_next input}"
p "Part 2 answer is #{Day01.captcha_half input}"
