require_relative('lib/employeepayroll')
require_relative('lib/payroll')
require_relative('lib/hourlyemployee')
require_relative('lib/salariedemployee')

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 100000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

employees = [josh, nizar, ted]

payroll = Payroll.new(employees)

payroll.pay_employees

# puts josh.calculate_payment 
# puts nizar.calculate_salary
# puts ted.calculate_salary