require_relative "t9_hash"

class Translator
  LOOKUP_TABLE = {
      "a" => 2, "b" => 2, "c" => 2,
      "d" => 3, "e" => 3, "f" => 3,
      "g" => 4, "h" => 4, "i" => 4,
      "j" => 5, "k" => 5, "l" => 5,
      "m" => 6, "n" => 6, "o" => 6,
      "p" => 7, "q" => 7, "r" => 7, "s" => 7,
      "t" => 8, "u" => 8, "v" => 8, "w" => 9,
      "x" => 9, "y" => 9, "z" => 9
  }

  def self.to_hash(word)
    word_hash = ""

    return word_hash
  end

  def self.to_words(t9_word)
    hash = T9Hash.new(t9_word)
    hash.to_words
  end
end
