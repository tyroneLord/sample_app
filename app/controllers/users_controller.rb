class UsersController < ApplicationController
  def new
  	@user = User.new
		@title = "Sign Up"
  end

   def show
   	# @user = User.all
   	@user = User.find(params[:id])
		@title = "Show"
  end

  def create
  	@user = User.new
  	render 'new'
  		
  end
end
