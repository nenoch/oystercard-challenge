# starting a journey
# finishing a journey
# calculating the fare of a journey
# returning whether or not the journey is complete

class Journey

attr_reader :entry_station, :exit_station

  def initialize(entry_station = nil, exit_station = nil)
    @entry_station = entry_station
    @exit_station = exit_station
  end


  def start_journey(station)
    @entry_station = station
  end

  def end_journey(station)
    @exit_station = station
    end

  def journey_complete?
    @exit_station != nil && @entry_station != nil
  end

end
