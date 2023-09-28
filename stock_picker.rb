def stock_picker(arr)
  best_buy = nil
  best_sell = nil
  max_profit = 0

  (0...arr.length - 2).each do |i|
    (i + 1...arr.length - 1).each do |j|
      profit = arr[j] - arr[i]
      if profit > max_profit
        max_profit = profit
        best_buy = i
        best_sell = j
      end
    end
  end
  [best_buy, best_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
