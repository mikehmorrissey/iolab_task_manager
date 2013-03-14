class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new(params[:user])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to iolabs"

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

end
