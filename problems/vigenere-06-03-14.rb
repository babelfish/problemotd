module Vigenere
  # @param key     [String] An alphabetic key used to encode the message.
  # @param message [String] An alphabetic message to be encoded.
  def self.encode key, message
    raise ArgumentError unless [key, message].all? { |a| a.is_a? String and a.length > 0 }
    
    letters = ("A".."Z").to_a
    
    # Create a new array equal in length to the message.
    # Iterate through the array and set each value to the letter represented by the sum of index values of the letters
    # at the some position in the key and message, mod 26. Join into a new string.
    Array.new(message.length).each_with_index.map { |_,i| letters[((key[i%key.length].ord-65)+(message[i].ord-65))%26] }.join
  end
  
  # @param key     [String] An alphabetic key used to encode the message.
  # @param cipher  [String] An alphabetic cipher to be decoded.
  def self.decode key, cipher
    raise ArgumentError unless [key, cipher].all? { |a| a.is_a? String and a.length > 0 }
    
    letters = ("A".."Z").to_a
    
    # Create a new array equal in length to the cipher.
    # Iterate through the array and set each value to the letter represented by the difference of index values of the letters
    # at the some position in the cipher and key, mod 26. Join into a new string.
    Array.new(cipher.length).each_with_index.map { |_,i| letters[(((cipher[i].ord-65)-key[i%key.length].ord-65))%26] }.join
  end
end