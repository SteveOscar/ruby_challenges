require 'pry'

puts 'hello world'
  text = File.read('./tswift.txt')
    puts text.class
    binding.pry
  read_lyrics

  text.gsub!("\n", " ")
