require 'station'

describe Station do
  subject(:station) { described_class.new("Victoria", 1) }

  it "checks that station has a name" do
    expect(subject.name).to eq "Victoria"
  end

  it "checks that station has a zone" do
    expect(subject.zone).to eq 1
  end

end
