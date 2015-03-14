class UsersController < ApplicationController
	def new
		@user = User.create
	end

	def create
		#In the Users controller, make an action named create to handle the POST requests. 
		#Modify the code so that if user.save is successful, redirect to '/about'. 
		#Otherwise redirect to '/users/new'.
		@user = User.new(user_params)
    		if @user.save
      			redirect_to('/about')
    		else
      			redirect_to('/users/new')
    		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
