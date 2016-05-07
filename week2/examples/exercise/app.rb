require_relative('lib/car')
require_relative('lib/engine')

v8 = Engine.new("DURRRR", 400)
v6 = Engine.new("durr", 200)
electric_engine = Engine.new("whoosh", 350)

# puts electric_engine.move_pistons

# new_car = Car.new("VROOOM", v8)
# patricks_car = Car.new("PURRRR", Engine.new("HAAAAA", 100))
# joshs_car = Car.new("NOISEEEE", electric_engine)

tesla = Car.new("Burr", electric_engine)
other_tesla = Car.new("Burr", v8)

tesla.start 
other_tesla.start
