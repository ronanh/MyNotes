class NotesController < ApplicationController

	def index
		puts "Hello World!"
	end
end
class NotesController < ApplicationController
	def index
		@notes = Note.all
	end
end