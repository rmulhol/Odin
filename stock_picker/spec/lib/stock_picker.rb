# Stock Picker exercise for Odin Project (Ruby Building Blocks)

def stock_picker(numbers)
	str_length = numbers.length
	differences = []
	numbers.each_with_index do |val, indx|
		x = indx
		until numbers[x] == numbers[str_length]
			differences << val - numbers[x]
			x += 1
		end
	end
	max_difference_indx = differences.index(differences.min)
	buy_day_index = 0
	sell_day_indx = 0
	while max_difference_indx > str_length
		sell_day_indx = max_difference_indx - str_length + buy_day_index + 1
		max_difference_indx = max_difference_indx - str_length
		str_length -= 1
		buy_day_index += 1
	end
	answer = [buy_day_index, sell_day_indx]
	answer
end

puts stock_picker([17,3,6,9,15,8,6,1,10])