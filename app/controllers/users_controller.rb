class UsersController < ApplicationController

   def show
   	# @user = User.all
   	@user = User.find(params[:id])
		@title = "Show"
  end

  def new
    @user = User.new
    
    @title = "Sign Up"
  end

  def create
  	@user = User.new(params[:user])
    if @user.save
      flash[:sucess] = "Welcome to my app"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
end
