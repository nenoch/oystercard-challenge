# starting a journey
# finishing a journey
# calculating the fare of a journey
# returning whether or not the journey is complete

class Journey

attr_reader :entry_station, :exit_station
MIN_FARE = 1
PENALTY_FARE = 6


  def initialize(entry_station = nil, exit_station = nil)
    @entry_station = entry_station
    @exit_station = exit_station
  end


  def start(station)
    @entry_station = station
  end

  def end(station)
    @exit_station = station
    end

  def complete?
    @exit_station != nil && @entry_station != nil
  end

  # def in_journey?
  #   @exit_station == nil && @entry_station != nil
  # end

  def fare
    complete? ? MIN_FARE : PENALTY_FARE
  end

end
