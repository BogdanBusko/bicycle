class AddReferecesBicylesAndCategoryBicycles < ActiveRecord::Migration[5.0]
  def change
  	add_reference :bicycles, :bicycle_categories, foreign_key: true
  end
end
