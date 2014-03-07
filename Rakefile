def problem p
  Dir[File.dirname(__FILE__) + "/problems/#{p}*.rb"].each { |file| require file }
end

task :vigenere do
  require 'language_detector'
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

task :matrix do
  problem "matrix-rotation"
  m = Matrix.new [[1,  2,   3,  4,  5],
                  [6,  7,   8,  9, 10],
                  [11, 12, 13, 14, 15],
                  [16, 17, 18, 19, 20],
                  [21, 22, 23, 24, 25]]
                  
  p m.rotate :right
end