class Concert < ActiveRecord::Base
	has_many :comments

	validates :artist, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validates :date, presence: true
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }
	validates :description, presence: true

	def self.concerts_today
		self.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day)
	end

	def self.concerts_this_month
		self.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_month, DateTime.now.end_of_month)
	end

	def self.price(user_input)
		self.where('price BETWEEN ? AND ?', 0, params[:price])
	end

end
