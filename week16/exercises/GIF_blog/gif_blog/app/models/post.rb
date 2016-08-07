class Post < ApplicationRecord

	def upvote
		votes = self.nov
		update(nov: votes + 1)
	end

	def downvote
		votes = self.nov
		update(nov: votes - 1)
	end
end
