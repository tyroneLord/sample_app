module SessionsHelper
	def sign_in(user)
		#sign the user in
		cookies.permanent[:remember_token] = user.remember_token
		current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by_remember_token(cookies[:remeber_token])
	end
end
