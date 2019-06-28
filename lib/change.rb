class Change
	def total_money(array)
		@total = (array[0] * 25) + (array[1] * 10) + (array[2] * 5) + (array[3])
		@total/100.to_f
	end

	def change_enough?(array,price)
		total_money(array)
		if @total > price
			true
		end
	end
end