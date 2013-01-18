require_relative 'spec_helper'

describe Dictionary do
  before(:each) do
    dummy_file = mock(:file)
    dummy_file.stub(:each_line).and_yield("one_entry")

    File.stub(:open).and_return(dummy_file)
  end

  it "should open the dictionary file" do
    File.should_receive(:open).with("/usr/share/dict/words", "r").once
    Dictionary.load_dictionary
  end

  it "should store the dictionary into an array" do
    Dictionary.load_dictionary
    Dictionary.words.should eq(["one_entry"])
  end

end
