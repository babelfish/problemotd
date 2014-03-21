require 'spec_helper'
include Palindrome

describe Palindrome do
  context "given a string containing a palindrome" do
    it { expect(longest "Max drives a racecar after work").to eql("a racecar a") }
  end
  
  context "given a string not containing a palindrome" do
    it { expect(longest "test").to eql("") }
  end
end