require_relative('lib/post')
require_relative('lib/blog')
require_relative('lib/specialized-post')

# post = Post.new("This is my first post", Time.now, "Some cool content")
# # Print 1 post
# post.print_single_post

blog = Blog.new

blog.add_post Post.new("Post Title 1", Time.now, "This is content for the very first blog post")
blog.add_post SponsoredPost.new("Post Title 2", Time.now + 600, "This is content for blog 2")
blog.add_post Post.new("Post Title 3", Time.now + 6000, "This is content for blog 3")
blog.add_post Post.new("Post Title 4", Time.now + 100, "This is content for blog 4")
blog.add_post Post.new("Post Title 5", Time.now + 12000, "I am entering some new content for blog 5")
blog.add_post Post.new("Post Title 6", Time.now + 3600, "Here is new content for blog 6")
blog.add_post Post.new("Post Title 7", Time.now + 60, "More freaking content")
blog.add_post Post.new("Post Title 8", Time.now + 10000000000000, "Last bit of new content, isn't this amazing?")

require 'colorize'

blog.publish

puts "For next page, type 'Next' and for previous page type 'Prev'".red

input = gets.chomp

if input == "Next"
	blog.next_page
elsif input == "Prev"
	blog.prev_page
end
