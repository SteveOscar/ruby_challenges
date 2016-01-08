class Translator
  def vowels
    'aeiouy'
  end

  def main
    loop do
      puts
      puts "Ready for you word, oink oink"
      word = gets.downcase.chomp
      return if word == "exit !"
      translate(word)
    end
  end

  def translate(word)
    split = find_first_vowel(word)
    consonant(word, split) unless split == 0
    vowel(word) if split == 0
  end

  def find_first_vowel(word)
    word.split('').each_with_index do |char, i|
      return i if vowels.include?(char)
    end
  end

  def consonant(word, split)
    p "To Pig Latin: " + word[split..-1] + '-' + word[0..(split-1)] + 'ay'
  end

  def vowel(word)
    puts "To Pig Latin: " + word + '-way'
    puts
  end

end

if __FILE__ == $0
  rep = Translator.new
  rep.main
end
