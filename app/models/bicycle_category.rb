class BicycleCategory < ApplicationRecord
	has_many :bicycles, optional: true
end
