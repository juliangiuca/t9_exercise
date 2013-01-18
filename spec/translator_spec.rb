require_relative 'spec_helper'

describe Translator do

  it "should convert a word into a t9 hash string" do
    Translator.to_hash("hello").should eq("43556")
  end

  it "should convert a t9 hash into an array of words" do
    Dictionary.stub(:words).and_return(["hello", "hi"])
    Translator.to_words("43556").should include("hello")
  end
end
