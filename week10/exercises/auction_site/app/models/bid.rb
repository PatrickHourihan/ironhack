class Bid < ActiveRecord::Base
	belongs_to :product

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
