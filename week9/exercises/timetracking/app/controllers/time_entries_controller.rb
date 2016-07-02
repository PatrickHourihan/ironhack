class TimeEntriesController < ApplicationController

# belongs_to :project
# validates :project, presence: true
# validates :hours, :minutes, presence: true, numericality: true

	def index
		@project = Project.find(params[:id])
		@time_entries = @project.time_entries
	end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

end
