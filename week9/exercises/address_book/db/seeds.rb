# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


contacts_list = [
	["Patrick Hourihan", "7821 SW 127th Dr., Miami, FL 33183", "904-608-4634", "houripj357@gmail.com"]
	["John Hourihan", "357 San Juan Drive, Ponte Vedra Beach, FL 32082", "904-273-0679", "john.hourihan@crowley.com"]
	["Priscila Hourihan", "222 Evergreen Terrace, Jacksonville, FL 33325", "904-515-5555", "prisci.torre@gamil.com"]
]

contacts_list.each do |name, address, phone_number, email_address|
  Contact.create( name: name, address: address, phone_number: phone_number, email_address: email_address )
end