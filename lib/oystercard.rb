class Oystercard

MAX_BALANCE = 90

attr_reader :balance, :money, :journey_status

  def initialize
    @balance = 0
    @money = 0
    @journey_status = false
  end

  def top_up(money)
  @money = money
  raise "the maximum allowed balance is #{MAX_BALANCE} !" if over_limit?
  @balance += money
  end

  def over_limit?
    balance + money > MAX_BALANCE
  end

  def deduct(fare)
    @balance -= fare
  end

  def in_journey?
    journey_status == true
  end

  def touch_in
    @journey_status = true

  end

end
