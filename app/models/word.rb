class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
    words = []

    self.where(length: word.size).each  do |entry|
      words << entry.word if is_anagram?(word,entry.word)
    end
    words
  end

  def self.canonical(word)
    word.downcase.split('').sort.join('')
  end

  def self.is_anagram?(word1, word2)
    canonical(word1) == canonical(word2)
  end
end
