require_relative('multipaymentpayable')

class MultiPaymentEmployee < Employee

include MultiPaymentEmployee

	def initialize(name, email, salary, hourly_rate, hours_worked)
		super(name, email)
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked

	end

	def overtime
		if @hours_worked > 40
		overtime = (@hours_worked - 40) * @hourly_rate
		else
		0
		end
	end


end
