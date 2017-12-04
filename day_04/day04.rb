input = File.read(File.join(File.dirname(__FILE__),'input.txt')).strip

passphrases = input.split("\n").map { |pass| pass.split(" ") }

def is_valid_p1_passphrase?(phrase)
  post_uniq = phrase.uniq
  post_uniq.length == phrase.length
end

valid_p1_passphrases = passphrases.select { |pass| is_valid_p1_passphrase?(pass) }

p valid_p1_passphrases.length
