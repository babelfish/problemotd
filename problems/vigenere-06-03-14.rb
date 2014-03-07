=begin
  Vigenère cipher
  
  The Vigenère cipher made its rounds in the mid-1550s up until the end of the American Civil War. It was very easy 
  for soldiers to encode messages and pass them around to all the allied camps.

  The cipher requires a key and a message. It works like this:

  Key:
  REDDIT
  Message:
  TODAYISMYBIRTHDAY
  REDDITREDDITREDDI
  TODAYISMYBIRTHDAY
  --------------------------
  KSGDGBJQBEQKKLGDG

  Using a 0 based alphabet (A=0), R is the 17th letter of the alphabet and T is the 19th letter of the alphabet. 
  (17 + 19) mod 26 = 11 which is where K resides in the alphabet. Repeat for each key/message letter combination 
  until done.

  Today's problem of the day is two part. The first part is to implement a Vigenère cipher in the programming language
   of your choice. Feel free to post solutions or links to solutions in the comments.

  The second part is to try and implement something to crack the message below (the key is 5 or less characters).

  ZEJFOKHTMSRMELCPODWHCGAW
=end

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