module ApplicationHelper
	def avatar_url(user)  #get avatar using user's email
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase  #get the email, encode it with MD5 then downcase
		if user.image  # if found user image in facebook, then use it
			user.image
		else
		"https://s.gravatar.com/avatar/08a24f97e85fb123abbee1db8450f0c5?s=80"  #gravatar gotten from grabatar.com
		end
	end
end
