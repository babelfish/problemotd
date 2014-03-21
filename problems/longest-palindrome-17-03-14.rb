module Palindrome
  def longest str
    palindromes = []
    pos         = 0
    
    while pos < str.length
      offset = 0
      
      while str[pos-offset-1] == str[pos+offset+1]
        offset = offset + 1
      end
      
      palindromes << str[pos-offset..pos+offset] if !offset.zero?
      
      pos = pos + offset + 1
    end
    
    palindromes.sort.pop or ""
  end
end