module Palindrome
  def reverse n
    m = 0
    
    until n == 0
      m = m*10 + unit(n)
      n = n / 10
    end
    
    m
  end

  def unit n
    n - 10*(n/10)
  end

  def palindrome? n
    n == reverse(n)
  end
end