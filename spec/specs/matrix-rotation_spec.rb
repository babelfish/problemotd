require 'spec_helper'

describe Matrix do
  let(:matrix) { Matrix.new [[1,  2,   3,  4,  5],
                            [6,  7,   8,  9, 10],
                            [11, 12, 13, 14, 15],
                            [16, 17, 18, 19, 20],
                            [21, 22, 23, 24, 25]] }
  
  let(:right_matrix) { Matrix.new [[21, 16, 11,  6, 1], 
                                  [22, 17, 12,  7, 2],
                                  [23, 18, 13,  8, 3],
                                  [24, 19, 14,  9, 4],
                                  [25, 20, 15, 10, 5]]}
  
  let(:left_matrix) { Matrix.new [[5, 10, 15, 20, 25], 
                                 [4, 9,  14, 19, 24],
                                 [3, 8,  13, 18, 23],
                                 [2, 7,  12, 17, 22],
                                 [1, 6,  11, 16, 21]]}
  
  context "rotating right" do
    it { expect(matrix.rotate :right).to eq(right_matrix) }
  end
  
  context "rotating left" do
    it { expect(matrix.rotate :left).to eq(left_matrix) }
  end
end