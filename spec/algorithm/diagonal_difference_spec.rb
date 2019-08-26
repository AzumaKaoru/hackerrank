require 'rspec'
require_relative '../../src/algorithm/diagonal_difference'

RSpec.describe DiagonalDifference do
  describe 'diagonal_difference' do
    subject do
      DiagonalDifference.new.diagonal_difference(target_array)
    end

    context '正の数のみの場合' do
      let(:target_array) { [[1,2,3],[4,5,6],[7,8,9]] }

      it '絶対値が正しく出力される' do
        expect(subject).to eq 0
      end
    end

    context '負の数が含まれている場合' do
      let(:target_array) { [[1,2,-3],[4,-5,6],[7,8,9]] }

      it '絶対値が正しく出力される' do
        expect(subject).to eq 6
      end
    end

    context '4*4の場合' do
      let(:target_array) { [[1,2,-3,4],[4,-5,6,7],[7,8,9,14],[7,8,9,-1]] }

      it '絶対値が正しく出力される' do
        expect(subject).to eq 21
      end
    end
  end
end
