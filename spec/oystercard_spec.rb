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
    it 'should throw an error if exceeding maximum balance (90)' do
      expect{subject.top_up(91)}.to raise_error "the maximum allowed balance is #{Oystercard::MAX_BALANCE} !"
    end

  end

  describe '#deduct' do
    it { is_expected.to respond_to(:deduct).with(1).argument }
  end
  it 'should deduct fare from balance' do
    subject.deduct(10)
    expect(subject.balance).to eq -10
  end

  describe '#in_journey?' do
    it {is_expected.to respond_to(:in_journey?)}
    it "should return either true or false" do
    #allow(subject).to receive(:in_journey?) {false}
    expect(subject.in_journey?).to eq(false)
  end
end

  describe '#touch_in' do
    it {is_expected.to respond_to(:touch_in)}
    it "should change journey_status to true" do
      card = Oystercard.new
      card.touch_in
      expect(card).to be_in_journey
    end
  end

  describe '#touch_out' do
    it {is_expected.to respond_to(:touch_out)}
    it "should change journey_status to false" do
      card = Oystercard.new
      card.touch_in
      card.touch_out
      should_not be_in_journey
    end
  end




end
