class Authenticator 
	
	def initialize(username, password)
		@username = username
		@password = password 
	end

	def authenticate?(username, password)
		if username == @username && password == @password
			true
		else
			false
		end
	end

end
