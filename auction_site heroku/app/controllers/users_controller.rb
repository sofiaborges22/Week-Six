class UsersController < ApplicationController
  def show
  	@user = User.find_by(id: params[:id])
  end

  def new
  	@new_user = User.new
  	render 'new'
  end

  def create
  	user = User.new(name: params[:user][:name], email: params[:user][:email])
  	if user.save
  		redirect_to user_path(user)
  	else
  		render :text => 'User could not be saved'
  	end
  end

  def destroy
  end
end

#Controller is plural