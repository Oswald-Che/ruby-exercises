
def bubble_sort(numbers)
	sorted = false
	until sorted
		sorted = true
		numbers.each_with_index do |number, index|
			next if number == numbers.last

			if number > numbers[index + 1]
				numbers[index] = numbers[index + 1]
				numbers[index + 1] = number
				sorted = false
			end
		end
	end
	numbers
end

puts bubble_sort([5, 3, 9, 1, 7, 2, 8, 4, 6])