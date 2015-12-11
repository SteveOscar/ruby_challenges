class Tswift
  attr_reader :text

  def text
    (File.read('./tswift.txt')).gsub!("\n", " ").gsub(/[^a-z0-9\s]/i, '').downcase
  end

  def unique_words(lyrics)
    (lyrics.split(' ').uniq).count
  end

end
