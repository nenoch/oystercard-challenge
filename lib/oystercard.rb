class Oystercard
MAX_BALANCE = 90
MIN_BALANCE = 1
attr_reader :balance, :money, :journeys

  def initialize
    @balance = 0
    @money = 0
    @entry_station = nil
    @journeys = []
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
    entry_station != nil
  end

  def touch_in(station)
    raise "Unsuffient balance. Top up to at least #{MIN_BALANCE}!" if below_minimum?
    Journey.new(station)
  end

  def touch_out(exit_station)
    deduct(MIN_BALANCE)
    @journeys << {entry_station: entry_station, exit_station: exit_station}
    @entry_station = nil
  end

  private
  def deduct(fare)
    @balance -= fare
  end

end
