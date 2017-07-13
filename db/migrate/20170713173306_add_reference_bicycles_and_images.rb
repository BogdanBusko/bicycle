class AddReferenceBicyclesAndImages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :images, :bicycles, index: true
  end
end
