=begin
  Matrix Rotation
  
  The bank manager at my local bank recently gave me the algorithm to access the bank's vault. I thought I'd pass on the 
  algorithm to you all for "safe keeping". Basically the vault has a USB port which you'll need to plug in to. Once 
  plugged in the vault will send you an NxN matrix such as the one below.

  Monday-Friday the key to the vault is to rotate the matrix 90 degrees clockwise. On Saturday and Sunday you have to 
  rotate the matrix 90 degrees counter-clockwise. My dog accidentally got locked in the vault and the bank manager is no 
  where to be found. Can someone help me write a program to get him out?
=end

class Matrix
  def initialize *args
    if args.length == 1
      @matrix = [args[0]] if args[0].is_a? Numeric
      @matrix = args[0]   if args[0].is_a? Array
      @matrix = args[0][] if args[0].is_a? Matrix
    elsif args.length > 1
      @matrix = []
      rows = args.flatten.sort_by { |a| a.length }
      
      rows.each { |a| a.each { |x| raise ArgumentError unless a.is_a? Numeric } }
      
      rows.each { |r| @matrix << Array.new(rows[0].length) { |i| r[i] } }
    end
  end
  
  def [] *args
    return @matrix if args.length == 0
    return @matrix[args[0],args[1]] if args.length >= 2
    return @matrix[args[0]] if args.length == 1
  end
  
  def == obj
    @matrix == obj[]
  end
  
  def rotate dir
    if dir == :right
      return Matrix.new Array.new(@matrix[0].length) { |i| Array.new(@matrix.length) { |j| @matrix[-(j+1)][i] } }
    elsif dir == :left
      return Matrix.new Array.new(@matrix[0].length) { |i| Array.new(@matrix.length) { |j| @matrix[j][-(i+1)] } }
    else
      raise ArgumentError
    end
  end
end