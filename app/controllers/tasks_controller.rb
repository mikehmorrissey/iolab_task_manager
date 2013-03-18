class TasksController < ApplicationController

	def new
		@task= Task.new
		@tasks= Task.all
	end


	def create
		@task = User.where(:user_id => params[:user_id]).tasks.build(params[:task])

		if @task.save
			flash[:success] = "Task Successfully created"
			render "new"

		else
			render "new"

	end


end
