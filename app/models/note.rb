class Note < ActiveRecord::Base
	def self.search(t)
		Note.where(title: t)
	end

end
