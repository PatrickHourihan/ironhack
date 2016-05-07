require_relative('hourlypayable')

class HourlyEmployee < Employee

include HourlyPayable

	def initialize(name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked

	end
end
