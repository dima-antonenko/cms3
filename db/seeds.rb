ProductCategory.destroy_all
Product.destroy_all


#ProductCategory.create(id: 1, name: "Категория 1")
#ProductCategory.create(id: 2, name: "Категория 2")
#ProductCategory.create(id: 3, name: "Категория 1-1", product_category_id: 1)

#Product.create(id: 1, product_category_id: 1, name: "Тестовый товар", description: "описание", sku: "228")


#10.times do |t|
#	Product.create(product_category_id: 1, name: "для удаления", description: "описание", sku: t)
#end

=begin
	

	
Menu.destroy_all
MenuItem.destroy_all

Menu.create(name: "главное меню", descriptor: "main")
MenuItem.create(title: "Главная", menu_id: Menu.first.id, url: '/', position: 1)
MenuItem.create(title: "Контакты", menu_id: Menu.first.id, url: '/contacts', position: 2)
MenuItem.create(title: "О Компании", menu_id: Menu.first.id, url: '/about', position: 3)
MenuItem.create(title: "Тестовая страница", menu_id: Menu.first.id, url: '/', position: 4)



=end


Slider.destroy_all
Slide.destroy_all

Slider.create(name: "Слайдер на главной странице")

Slide.create(name: "Слайд 1",  slider_id: Slider.first.id, description: "this is a description")
Slide.create(name: "Слайд 2",  slider_id: Slider.first.id, description: "this is a description")
Slide.create(name: "Слайд 3",  slider_id: Slider.first.id, description: "this is a description")