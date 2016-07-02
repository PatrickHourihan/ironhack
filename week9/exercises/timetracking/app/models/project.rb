class Project < ActiveRecord::Base
has_many :time_entries
validates :name, uniqueness: true, presence: true, length: { maximum: 30 }, format: { with: /[a-zA-Z0-9]/ }

	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(n)
		limit(n).order(created_at: :desc)
	end

	def total_hours_in_month(month, year)
		date = Time.new(year, month)
		entries_in_month = time_entries.where(
			date: date..date.end_of_month
		)
		hours = entries_in_month.sum { |e| e.hours }
		minutes = entires_in_month.sum { |e| e.minutes }
		(minutes /60) + hours
	end
end 

