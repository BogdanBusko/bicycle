class Bicycle < ApplicationRecord
	has_many :comment_and_like
	has_many :images
	belongs_to :bicycle_categories, optional: true
end
