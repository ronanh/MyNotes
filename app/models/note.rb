class Note < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title
	paginates_per 3

	def self.search(keywords)
		where 'lower(title) like :keywords OR lower(content) like :keywords', keywords: "%#{keywords.downcase}%"
	end

end
