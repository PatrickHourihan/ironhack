class Contact < ActiveRecord::Base
	def self.show_contact
		order(name: :ASC)
	end
end
