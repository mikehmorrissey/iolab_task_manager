class NotesController < ApplicationController

	def show
		@note = Note.new(params[:id])
		@feed = Note.all

	end
	
   def create
      @note = current_user.microposts.build(params[:note])
      
      if @note.save
        render 'notes#show'
      else
        render 'notes#show'
      end
   
    end




end
