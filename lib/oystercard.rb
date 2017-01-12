require 'journey'

class Oystercard
MAX_BALANCE = 90
MIN_BALANCE = 1
attr_reader :balance, :money, :journeys, :current_journey

  def initialize
    @balance = 0
    @money = 0
    @journeys = []
    @current_journey = Journey.new
  end

  def top_up(money)
  @money = money
  raise "the maximum allowed balance is #{MAX_BALANCE} !" if over_limit?
  @balance += money
  end

  def over_limit?
    balance + money > MAX_BALANCE
  end

  def below_minimum?
    balance < MIN_BALANCE
  end

  def in_journey?
    journey_complete?
  end

  def touch_in(station)
    raise "Unsufficient balance. Top up to at least #{MIN_BALANCE}!" if below_minimum?
    @current_journey.start_journey(station)
  end

  def touch_out(exit_station)
    deduct(MIN_BALANCE)
    @current_journey.end_journey(exit_station)
    @journeys << @current_journey
    end

  private
  def deduct(fare)
    @balance -= fare
  end

end
