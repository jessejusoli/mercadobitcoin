require 'spec_helper'

describe BitcoinToYou do
  subject { described_class }

  describe '.ticker' do
    xit 'returns current ticker information for btc' do
      ticker = subject.ticker
      keys = ["buy", "date", "high", "last", "low", "sell", "vol"]

      keys.each do |key|
        expect(ticker[key]).to be
      end
    end
  end

  describe '.balance' do
    it 'works' do
      expect(subject.balance).to eq 123
    end
  end
end
