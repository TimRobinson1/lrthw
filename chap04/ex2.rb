#Section 4 - Study Drills

#Number of cars
cars = 100

#Number of passengers that can fit in one car.
space_in_a_car = 4

#Number of drivers available.
drivers = 30

#Number of passengers.
passengers = 90

#Number of cars that aren't being used.
cars_not_driven = cars - drivers

#Number of cars in use. Logically, equal to number of drivers.
cars_driven = drivers

#Number of people that can be transported.
carpool_capacity = cars_driven * space_in_a_car

#Average amount of passengers per car.
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "we have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
