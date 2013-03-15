class UsersController < ApplicationController
	before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  
  	before_filter :correct_user,   only: [:edit, :update]
	
	def index
		@user = User.all
	end

	def show 
		@user = User.find(params[:id])
	end

	def new
		@user = User.new(params[:user])
	end

	def create

		@user = User.new(params[:user])

		if @user.save
			flash[:success] = "Welcome to iolabs"
			sign_in @user
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		if @user.update_attributes(params[:user])
		end

	end

	def destroy
		@user.find(params[:id]).destroy
		flash[:sucess] = "User successfully detroyed"
		render 'index'
	end

	private

	def correct_user
      @user = User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end

end
