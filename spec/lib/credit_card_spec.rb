require 'rspec'
require_relative '../../lib/credit_card'

describe CreditCard do
  describe '#balance' do
    it 'should be zero for new cards' do
      expect(subject.balance).to eq(0.0)
    end
  end

  describe '#charge(amount)' do
    it 'adds the amount to the balance' do
      subject.charge(3.00)
      expect(subject.balance).to eq(3.00)
    end
  end

  describe '#credit(amount)' do
    it 'subtracts amount from the balance' do
      subject.credit(5.00)
      expect(subject.balance).to eq(-5.00)
    end
  end
end
