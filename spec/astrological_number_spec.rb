require 'spec_helper'
describe AstrologicalNumber do
  context 'With valid date' do
    let(:dob) { AstrologicalNumber.new('03-10-1989') }

    it { expect(dob.send(:valid?)).to be_truthy }
    it 'should give correct astrological number' do
      expect(dob.calculate_number).to eq(4)
    end
  end

  context 'With Invalid date' do
    let(:dob) { AstrologicalNumber.new('0319-1989') }

    it { expect(dob.send(:valid?)).to be_falsy }
  end
end
