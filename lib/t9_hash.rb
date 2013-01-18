require_relative 'dictionary'

class T9Hash

  REVERSE_LOOKUP_TABLE = {
    "2" => ["a", "b", "c"],
    "3" => ["d", "e", "f"],
    "4" => ["g", "h", "i"],
    "5" => ["j", "k", "l"],
    "6" => ["m", "n", "o"],
    "7" => ["p", "q", "r", "s"],
    "8" => ["t", "u", "v", "w"],
    "9" => ["x", "y", "z"]
  }

  def initialize(hash)
  end

  def to_words
  end

  private
  def translate
    letter_combinations = perform_lookup
    word_combinations   = combine_letters(letter_combinations)
    filter_against_dictionary(word_combinations)
  end

  # This converts the T9 numbers into letters
  # i.e. 2 => ["a", "b", "c"]
  def perform_lookup
  end

  # This combines a nested array into words
  # i.e. ["g", "h", "i"], ["d", "e", "f"]] => ["ge", "ge", "gf", "hd"..... etc]
  # We want to make sure we have at least one letter for this method to work
  def combine_letters(nested_letters)
  end

  # This will find any words that exist in both Dictionary.words and array_of_words
  def filter_against_dictionary(array_of_words)
    return unless array_of_words
  end
end
