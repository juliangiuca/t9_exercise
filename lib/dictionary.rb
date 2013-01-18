require 'singleton'

class Dictionary
  include Singleton

  class << self
    attr_accessor :words
  end

  # We load the dictionary file into the @words class variable.
  # We only want to load the dictionary file if the @words class variable is empty.
  def self.load_dictionary

    File.open("/usr/share/dict/words", "r").each_line do |line|

    end
  end

end
