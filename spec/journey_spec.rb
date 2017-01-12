require 'journey'

describe Journey do
  # subject(:journey) { described_class.new }
  let (:entry_station) {double :bank}
  let (:exit_station) {double :victoria}

  it "responds to ::MIN_FARE" do
    expect(described_class).to be_const_defined(:MIN_FARE)
  end

  it "responds to ::PENALTY_FARE" do
    expect(described_class).to be_const_defined(:PENALTY_FARE)
  end

  describe "#start" do

    it "allows Journey to record an entry station" do
    expect(subject.start(entry_station)).to eq entry_station
    end

  end

  describe "#end" do

    it "allows Journey to record an exit station" do
    expect(subject.end(exit_station)).to eq exit_station
    end

  end

  describe "#end" do

    it "returns whether or not the journey is complete" do
    subject.start(entry_station)
    subject.end(exit_station)
    expect(subject.complete?).to eq true
    end

  end

  describe "#fare" do

    it "returns the fare of the journey" do
      subject.start(entry_station)
      subject.end(exit_station)
    expect(subject.fare).to eq Journey::MIN_FARE
    end

  end
end
