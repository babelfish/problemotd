require 'spec_helper'
include Palindrome

describe Palindrome do
  context "with a palindrome number" do
    it { expect(palindrome? 123321).to be_true }
  end
  
  context "with a non-palindrome number" do
    it { expect(palindrome? 123320).to be_false }
  end
end