require 'rspec'
require_relative '../../src/algorithm/a_very_big_sum'

RSpec.describe AVeryBigSum do
  describe 'a very big sum' do
    subject do
      AVeryBigSum.new.a_very_big_sum(target_array)
    end

    context '要素が1個の場合' do
      let(:target_array) { [1000000000] }

      it '整数として出力される' do
        expect(subject).to eq 1000000000
      end
    end

    context '要素が複数個の場合' do
      let(:target_array) { [1000000001, 1000000002, 1000000003, 1000000004, 1000000005] }

      it '整数として出力される' do
        expect(subject).to eq 5000000015
      end
    end
  end
end