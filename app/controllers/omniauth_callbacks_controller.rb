class OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def facebook  # controls requests from our fb app
		@user = User.from_omniauth(request.env["omniauth.auth"])

		if @user.persisted?  # if found a user
			sign_in_and_redirect @user, :event => :authentication
			set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
		else
			session["devise.facebook_data"] = request.env["omniauth.auth"]
			redirect_to new_user_registration_url  # sign up
		end
	end
end
