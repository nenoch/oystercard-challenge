require "./lib/oystercard"
describe Oystercard do
  subject(:oystercard) { described_class.new }

  it 'should show oystercard balance' do
  expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'should add the value passed to balance' do
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end
  end
end
