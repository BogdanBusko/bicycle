class Bicycle < ApplicationRecord
	has_many :comment_and_like
	has_many :images
	belongs_to :bicycle_categories, optional: true

	def self.search (search)
		if search 
			where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
		else
			'No results'
		end
	end
end
