def stock_picker(prices)
  #This default value for best_profit allows to return the less money lost
  best_profit = -100
  # Just in case the input array of prices has less than one element
  return "Please insert more than 1 day to compare" if prices.length < 2

  best_days = [0,1]
  prices.each_with_index do |val, buy_day|
    (buy_day + 1).upto(prices.length - 1) do |sell_day|
      this_profit = prices[sell_day] - val
      if this_profit > best_profit
        best_profit = this_profit
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end


puts stock_picker([17,3,6,9,15,8,6,1,10])
