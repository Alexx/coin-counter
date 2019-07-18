#!/user/bin/env ruby

require('pry')

class Coin
  def initialize(money)
    @@money_to_sort = money
  end

  def sort_coin
    @@quarters = 0
    @@dimes = 0
    @@nickels = 0
    @@pennies = 0

    until @@money_to_sort <= 0
      if @@money_to_sort >= 0.25
        @@quarters += 1
        @@money_to_sort -= 0.25
      elsif @@money_to_sort >= 0.10
        @@dimes += 1
        @@money_to_sort -= 0.10
      elsif @@money_to_sort >= 0.05
        @@nickels += 1
        @@money_to_sort -= 0.05
      else
        @@pennies += 1
        @@money_to_sort -= 0.01
      end
    end
    [@@quarters, @@dimes, @@nickels, @@pennies]
  end
end
