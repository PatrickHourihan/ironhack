class PostsController < ApplicationController

	def home
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(
			title: params[:post][:title],
			gif_url: params[:post][:gif_url],
			)
		@post.save

		redirect_to '/posts'
	end

	def index
		@posts = Post.all
	end

	def show 
		@post = Post.find(params[:id])
	end

	def upvote
  		@post = Post.find(params[:id])
  		@post.upvote
  		
  		redirect_to post_path(@post.id)
	end

	def downvote
  		@post = Post.find(params[:id])
  		@post.downvote
  		
  		redirect_to post_path(@post.id)
	end

end
