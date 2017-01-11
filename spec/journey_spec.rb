require 'journey'

describe Journey do
  subject(:journey) { described_class.new }

  it "allows Journey to record an entry station" do
    card = Oystercard.new
    card.top_up(10)
    card.touch_in("Victoria")
    expect(subject.entry_station).to eq "Victoria"
  end

end
