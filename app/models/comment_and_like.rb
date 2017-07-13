class CommentAndLike < ApplicationRecord
	belongs_to :bicycles, optional: true
end
