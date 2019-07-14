require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do
  describe "#prime_numbers_less_than" do
    let(:prime_numbers_less_than) { Eratos.prime_numbers_less_than(argument_number) }
    context "when argument number is 30" do
      let(:argument_number) { 30 }
      it { expect(prime_numbers_less_than).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
    end

    context "when argument number is 120" do
      let(:argument_number) { 120 }
      it { expect(prime_numbers_less_than).to eq [
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53,
        59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113]}
    end

    context "when argument number is 1" do
      let(:argument_number) { 1 }
      it { expect { prime_numbers_less_than }.to raise_error(ArgumentError) }
    end
  end
end
