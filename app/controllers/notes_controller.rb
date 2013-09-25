class NotesController < ApplicationController

	def index
		puts "Hello World!"
	end
end
class NotesController < ApplicationController
	def index
		@message = params[:message]
	end
end