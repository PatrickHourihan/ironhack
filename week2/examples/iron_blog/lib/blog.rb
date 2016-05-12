# Attributes 
	# Hold a collection of posts

# Actions 
	# Publish 

class Blog 

	def initialize
		@array_of_posts = []
		@current_page = 1
		@posts_per_page = 3
	end

	def next_page
		@current_page = @current_page + 1
		publish
	end

	def prev_page
		@current_page = @current_page - 1
		publish
	end

	def add_post(post)
		@array_of_posts.push(post)
	end

	def publish
		sorted_posts = @array_of_posts.sort { | post1, post2 | post1.date <=> post2.date }


		first = (@current_page - 1) * 3
		last = first + (@posts_per_page - 1)
		#page 1
		# sorted_posts[0..2]
		#page 2
		# sorted_posts[3..5]

		sorted_posts[first..last].each do | single_post |
			single_post.print_single_post
		end
	end

end 


