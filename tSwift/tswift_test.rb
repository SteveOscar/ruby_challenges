require_relative 'tswift'
require 'minitest'
require 'minitest/autorun'

class TswiftTest < Minitest::Test

  def test_file_is_sanitized
    lyrics = Tswift.new.text
    assert_equal String, lyrics.class
    refute lyrics.include?('\n')
    refute lyrics.include?("'")
  end

  def test_word_count
    bad_lyrics = Tswift.new
    text = bad_lyrics.text
    count = bad_lyrics.unique_words(text)
    assert_equal 1994, count
  end

end
