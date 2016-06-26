# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contacts_list = [
	[ "Patrick Hourihan", "123 Evergreen Terrace", "305-555-5555", "patrick@me.com" ],
	[ "Priscila Torre", "7821 SW 127th Drive", "786-491-5555", "priscila@me.com" ],
	[ "Jack Hourihan", "357 San Juan Drive", "904-608-5555", "jack@art.com" ]
]

contacts_list.each do |name, address, phone_number, email_address|
  Contact.create( name: name, address: address, phone_number: phone_number, email_address: email_address )
end