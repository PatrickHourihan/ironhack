# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "Josh", email: "josh@me.com")
user2 = User.create(name: "Leo", email: "leo@me.com")
user3 = User.create(name: "Faraz", email: "faraz@me.com")

product1 = Product.create(title: "Headphones", description: "These headphones rock.", deadline: 2.days.from_now, user_id: 2)
product2 = Product.create(title: "A slip knot", description: "You will never be able to untangle this know.", deadline: 5.days.from_now, user_id: 3)
product3 = Product.create(title: "Rum", description: "This rum is tasty.", deadline: 10.days.from_now, user_id: 1)
