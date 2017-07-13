class AddReferenceBicyclesAndCommentAndLike < ActiveRecord::Migration[5.0]
  def change
  	add_reference :comment_and_likes, :bicycles, index: true
  end
end
