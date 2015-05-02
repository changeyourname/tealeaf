statement = "Herman Munster is a BIG BIG man."

class String
  def map_words!
    punctuation = self.match(/\p{Punct}$/)[0] || ''
    words = self.split(/\W/)
    words.map! { |word| yield word }
    self.replace(words.join(' ') + punctuation)
  end
end

puts statement.map_words! { |word| word.reverse }