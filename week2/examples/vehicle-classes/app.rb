# Motorcycle
# Sedan
# Hoverboard
# Unicycle
# 18 Wheeler

require_relative('lib/wheel-counter')

ninja = Motorcycle.new("vroom") #2
mazda = Sedan.new("zoom") #4
hoverboard = Hoverboard.new("blaam") #0
my_cycle = Unicycle.new("whoosh") #1
truck = Truck.new("BRAAAAAAAPPPP!!!!") #18

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
puts wheel_counter.count_wheels
# 25