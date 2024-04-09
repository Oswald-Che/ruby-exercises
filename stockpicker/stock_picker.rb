def stock_picker(array)
  price = 0
  dates = []
  array.each_with_index do |buy, b_index|
    array.each_with_index do |sell, s_index|
      next if s_index < b_index

      if sell - buy > price
        price = sell - buy
        dates = [b_index, s_index]
      end
    end
  end
  dates
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
