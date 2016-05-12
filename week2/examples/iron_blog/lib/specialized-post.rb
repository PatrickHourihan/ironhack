class SponsoredPost < Post
	def initialize(title, date, text)
		title = "******#{title}******"
		super(title, date, text)
	end
end
