class Contact < ActiveRecord::Base
	def self.show_contacts
		order(created_at: :desc)
	end
end
