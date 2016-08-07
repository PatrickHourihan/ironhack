class PostsController < ApplicationController
	def index 
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def home
		@posts = Post.all
		@minimumVotes = @posts.where("votes >= ?", "5")
		@sortByDate = @posts.sort_by &:created_at
		@sortByVotes = @posts.sort_by &:votes
	end

	

	def create
		@post = Post.new(post_params)

		if @post.save
			# Go to the index 
			redirect_to posts_path
		else 
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def upvote 
		@post = Post.find(params[:id])

		@post.increment!(:votes)
		
		redirect_to post_path(@post)
	end

	def downvote 
		@post = Post.find(params[:id])

		@post.decrement!(:votes)
		
		redirect_to post_path(@post)
	end

	private 

	def post_params
		params.require(:post).permit(:title, :gif_url)
	end

end
