require 'spec_helper'

describe MercadoBitcoin do
  subject { described_class }

  before do
    described_class.authenticate! YAML.load_file("./spec/credentials.yaml")
  end

  describe '.balance' do
    it 'returns balance information' do
      expect(subject.balance["return"]["funds"]["btc"]).to be
    end
  end
end
