def stock_picker(array)
  price = 0
  dates = []
  array.each_with_index do |buy_price, buy_date|
    array.each_with_index do |sell_price, sell_date|
      next if sell_date < buy_date

      if sell_price - buy_price > price
        price = sell_price - buy_price
        dates = [buy_date, sell_date]
      end
    end
  end
  dates
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
