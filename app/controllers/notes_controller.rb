class NotesController < ApplicationController

	def new
		@note = Note.new
		@feed = Note.all
		
		respond_to do |format|
  		format.html
  		format.js
  	end


	end
	
   def create
  	   
      @note = current_user.notes.build(params[:note])
      if @note.save
  	 	 respond_to do |format|
  			format.html {redirect_to new_note_path}
  			format.js
  		end
	end
      
    end



end
