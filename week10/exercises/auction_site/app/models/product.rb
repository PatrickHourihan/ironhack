class Product < ActiveRecord::Base
	belongs_to :user
	has_many :bids

	def self.last_created_products(n)
		limit(n).order(created_at: :desc)
	end
end
