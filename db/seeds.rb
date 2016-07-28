# Config
gender = ['Male', 'Female']


# CREATE CATEGORIES AND PRODUCTS
product_images = ['Conditioner1.jpg', 'cream.jpg', 'cream2.jpg', 'cream3.jpg', 'cream4.jpg', 'lipgloss.jpg', 'mascara2.jpg', 'mascara3.jpg', 'test-eco-image.jpg']
product_names = ['Facial Cream', 'Body Lotion', 'Bath Oil', 'Shampoo', 'Hair Oil', 'Hair Spray', 'Mascara', 'Foundation', 'Concealer', 'Powder', 'Eye Shadow', 'Eyebrow Makeup', 'Conditioner', 'Lipstick', 'Lipgloss', 'Eye Liner', 'Nail Polish', 'Bronzer', 'BB Creme', 'Hand Creme', 'Body Oil']


categories = ['Makeup', 'Hair', 'Body & Bath']

categories.each do |category|
	# Create Categories
	new_category = Category.create!(name: category)
	
	# Create 12 Products per Category
	12.times do
		new_category.products.create!(
			name: product_names.sample,
			brand: Faker::Company.name,
			gender: gender.sample,
			website: Faker::Internet.url,
			image: product_images.sample,
			price: rand(19.99..50).round(2).to_s,
			quantity: "#{rand(25..150)}ml"
		)
	end
end
# END CATEGORIES AND PRODUCTS



# CREATE USERS


# END USERS