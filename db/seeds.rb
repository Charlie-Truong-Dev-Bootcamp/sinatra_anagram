require_relative '../app/models/word'

module WordImporter
  def self.seed
    File.open('words.txt', "r") do |file|
      file.each_line do |line|
        word_thing = line.chomp
        # Word.create(word: line.chomp)
        Word.create(word: word_thing, length: word_thing.size)
      end
    end
  end
end

WordImporter.seed
