input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip

passphrases = input.split("\n").map { |pass| pass.split(" ") }

def is_valid_p1_passphrase?(phrase)
  post_uniq = phrase.uniq
  post_uniq.length == phrase.length
end

valid_p1_passphrases = passphrases.select { |pass| is_valid_p1_passphrase?(pass) }

def is_valid_p2_passphrase?(phrase)
  post_uniq = phrase.map { |ps| ps.chars.sort(&:casecmp).join }.uniq
  post_uniq.length == phrase.length
end

valid_p2_passphrases = passphrases.select { |pass| is_valid_p2_passphrase?(pass) }

p "Part 1 valid passphrases: #{valid_p1_passphrases.length}"
p "Part 2 valid passphrases: #{valid_p2_passphrases.length}"
