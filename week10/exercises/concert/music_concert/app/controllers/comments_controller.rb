class CommentsController < ApplicationController

	def index 
		@concert = Concert.find_by(id: params[:id])
		@comments = @concert.comments.all
	end

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(
			params.require(:comment).permit(:comment)
			)
		@comment.save

		redirect_to concert_path(@concert)
	end

end
