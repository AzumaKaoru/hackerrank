require 'rspec'
require_relative '../../src/algorithm/simple_array_sum'

RSpec.describe SimpleArraySum do
  describe 'simple_array_sum' do
    subject do
      SimpleArraySum.new.simple_array_sum(target_array)
    end

    context '配列の要素が1個の場合' do
      let(:target_array) { [1] }

      it '整数として出力される' do
        expect(subject).to eq 1
      end
    end

    context '配列の要素が複数の場合' do
      let(:target_array) { [1,2,3,4,5] }

      it '足し算された結果が整数として出力される' do
        expect(subject).to eq 15
      end
    end
  end
end
