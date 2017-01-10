class Oystercard
MAX_BALANCE = 90
MIN_BALANCE = 1
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

  def below_minimum?
    balance < MIN_BALANCE
  end

  def deduct(fare)
    @balance -= fare
  end

  def in_journey?
    journey_status == true
  end

  def touch_in
    raise "Unsuffient balance. Top up to at least #{MIN_BALANCE}!" if below_minimum?
    @journey_status = true
  end

  def touch_out
    @journey_status = false
  end

end
