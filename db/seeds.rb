BicycleCategory.create(category: 'Sport')
BicycleCategory.create(category: 'Other')

20.times do |el|
	Bicycle.create(name: "#{el} Test bicycle", description: 'Test description', bicycle_categories_id: 1, image_url: 'bike-home-template-optimized.jpg')
	el += 1
end


Bicycle.create(name: 'Test bicycles', description: 'Test description',  bicycle_categories_id: 2, image_url: 'bike-home-template-optimized.jpg')
Bicycle.create(name: 'Test bicycles', description: 'Test description',  bicycle_categories_id: 2, image_url: 'download.jpg')
Bicycle.create(name: 'Test bicycles', description: 'Test description',  bicycle_categories_id: 2, image_url: 'bike-home-template-optimized.jpg')