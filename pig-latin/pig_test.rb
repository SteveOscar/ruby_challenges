require 'minitest'
require 'minitest/autorun'
require_relative 'pig_latin'

class PigTest < Minitest::Test

  def test_finds_first_vowel
    translate = Translator.new
    answer = translate.find_first_vowel('card')
    assert_equal 1, answer
  end

  def test_consonant_method
    translate = Translator.new
    answer = translate.consonant("card", 1)
    message = "To Pig Latin: ard-cay"
    assert_equal answer, message
  end

end
