 class SessionsController < ApplicationController

 	def new
 		@title = "Sign In"
 	end

 	def create
 		user = User.find_by_email(params[:session][:email])
 		# THIS LINE CHECK THE USER VAR AND THEN GET THES SESSION PASSWORD PARAMS AND RUNS
 		# authenticate ON IT WHICH IS GIVEN TO US BY BCRYPT-RUBY GEM
 		if user && user.authenticate(params[:session][:password])
 			sign_in user
 			redirect_to user
 		else
	 		# this makes the flash happen only on one requst
	 		flash.now[:error] =  "Invalid email/password combo"
	 		render 'new'
	 	end
 	end

 	def destroy

 	end

end
