require 'journey'

describe Journey do
  # subject(:journey) { described_class.new }
  let (:entry_station) {double :bank}
  let (:exit_station) {double :victoria}

  it "allows Journey to record an entry station" do
    # subject.start_journey(entry_station)
    expect(subject.start_journey(entry_station)).to eq entry_station
  end

end
