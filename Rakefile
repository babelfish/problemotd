require 'language_detector'

def problem p
  Dir[File.dirname(__FILE__) + "/problems/#{p}*.rb"].each { |file| require file }
end

task :vigenere do
  problem "vigenere"
  
  d = LanguageDetector.new
  
  count = 0
  
  begin
    m = Vigenere::decode Array.new(rand(1..5)).map { [*"A".."Z"].sample }.join, "ZEJFOKHTMSRMELCPODWHCGAW"
    l = d.detect m
    
    if l == "en"
      count = count + 1
      puts m
    end
  end until count == 10
end

