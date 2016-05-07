module HourlyPayable
	def calculate_payment()
		calculate_payment = @hours_worked * @hourly_rate
		return calculate_payment
	end
end

