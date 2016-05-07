require_relative('salarypayable')

class SalariedEmployee < Employee

include SalaryPayable

	def initialize(name, email, salary)
		super(name, email)
		@salary = salary

	end
end
