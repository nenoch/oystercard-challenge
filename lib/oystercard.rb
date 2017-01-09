class Oystercard

MAX_BALANCE = 90

attr_reader :balance, :money

  def initialize
    @balance = 0
    @money = 0
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

end
