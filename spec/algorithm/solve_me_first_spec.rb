require 'rspec'
require_relative '../../src/algorithm/solve_me_first'

RSpec.describe SolveMeFirst do
  describe 'solve_me_first' do
    subject do
      SolveMeFirst.new.solve_me_first(first_number, second_number)
    end

    context '2と3の場合、' do
      let(:first_number) { 2 }
      let(:second_number) { 3 }

      it '5' do
        expect(subject).to eq 5
      end
    end
  end
end
