require "./lib/oystercard"
describe Oystercard do

  #subject(:oystercard) {described_class.new(100)}

  it ' should show oystercard balance' do

  card = Oystercard.new(100)
  expect(card.balance).to eq(100)
  end
end
