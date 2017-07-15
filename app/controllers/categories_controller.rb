class CategoriesController < ApplicationController
  def show
  	@bicycles = show_bicycles
  	@categories = show_categories
  	@used_category = show_used_category
  end

  private

  	def show_bicycles
  		if params[:id]
  		  Bicycle.where(bicycle_categories_id: params[:id]).all.paginate(per_page: 5, page: params[:page])
      elsif params[:search]
  		  Bicycle.search(params[:search]).paginate(per_page: 5, page: params[:page])
      else
        Bicycle.all.paginate(per_page: 5, page: params[:page])
      end

  	end

  	def show_categories
  		if params[:id].nil?
  			BicycleCategory.all
  		else
  			BicycleCategory.where.not(id: params[:id]).all
  		end
  	end

  	def show_used_category
  		if params[:id].nil? 
  			'All'
  		else
  			BicycleCategory.find(params[:id]).category
  		end
  	end
end
