require 'spec_helper'

describe Vigenere do
  context "calling encode" do
    context "with valid arguments" do
      it { expect( Vigenere.encode "REDDIT", "TODAYISMYBIRTHDAY" ).to eq("KSGDGBJQBEQKKLGDG") }
    end
    
    context "with invalid arguments" do
      it { expect{ Vigenere.encode 123, "TODAYISMYBIRTHDAY" }.to raise_error(ArgumentError) }
    end
  end
  
  context "calling decode" do
    context "with valid arguments" do
      it { expect( Vigenere.decode "REDDIT", "KSGDGBJQBEQKKLGDG" ).to eq("TODAYISMYBIRTHDAY") }
    end
    
    context "with invalid arguments" do
      it { expect{ Vigenere.decode 123, "KSGDGBJQBEQKKLGDG" }.to raise_error(ArgumentError) }
    end
  end
end