class CreateCommentAndLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_and_likes do |t|
      t.string :user_id
      t.string :comment
      t.boolean :like

      t.timestamps
    end
  end
end
